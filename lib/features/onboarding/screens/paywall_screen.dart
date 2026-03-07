import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

import '../../../core/constants/app_constants.dart';
import '../../../shared/widgets/widgets.dart';
import '../../../services/revenuecat_service.dart';
import '../providers/onboarding_provider.dart';

class PaywallScreen extends ConsumerStatefulWidget {
  const PaywallScreen({super.key});

  @override
  ConsumerState<PaywallScreen> createState() => _PaywallScreenState();
}

class _PaywallScreenState extends ConsumerState<PaywallScreen> {
  Offering? _offering;
  Package? _selectedPackage;
  bool _isLoading = true;
  bool _isPurchasing = false;

  @override
  void initState() {
    super.initState();
    _loadOfferings();
  }

  Future<void> _loadOfferings() async {
    final offering = await RevenueCatService.instance.getCurrentOffering();

    if (mounted) {
      setState(() {
        _offering = offering;
        // Pre-select yearly package
        if (offering != null) {
          _selectedPackage =
              offering.annual ?? offering.availablePackages.firstOrNull;
        }
        _isLoading = false;
      });
    }
  }

  Future<void> _handlePurchase() async {
    if (_selectedPackage == null) return;

    setState(() => _isPurchasing = true);

    try {
      final customerInfo =
          await RevenueCatService.instance.purchasePackage(_selectedPackage!);

      if (customerInfo != null &&
          customerInfo.entitlements.active
              .containsKey(RevenueCatService.premiumEntitlement)) {
        // Purchase successful — advance onboarding
        if (mounted) {
          ref.read(onboardingProvider.notifier).nextStep();
        }
      }
    } on PlatformException catch (e) {
      if (mounted) {
        final errorCode = PurchasesErrorHelper.getErrorCode(e);
        if (errorCode != PurchasesErrorCode.purchaseCancelledError) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Purchase failed. Please try again.'),
              backgroundColor: AppColors.error,
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Purchase failed. Please try again.'),
            backgroundColor: AppColors.error,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isPurchasing = false);
      }
    }
  }

  Future<void> _handleRestore() async {
    setState(() => _isPurchasing = true);

    try {
      final CustomerInfo customerInfo = await Purchases.restorePurchases();

      if (customerInfo.entitlements.all[RevenueCatService.premiumEntitlement]
              ?.isActive ==
          true) {
        // Restored successfully — advance onboarding
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Purchases restored successfully!'),
              backgroundColor: Colors.green,
            ),
          );
          ref.read(onboardingProvider.notifier).nextStep();
        }
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('No active subscription found.'),
            ),
          );
        }
      }
    } on PlatformException catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Restore failed: ${e.message ?? 'Unknown error'}'),
            backgroundColor: AppColors.error,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isPurchasing = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          children: [
            const SizedBox(height: AppSpacing.xl),

            // Headline
            Text(
              'Unlock Full Access',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: AppColors.metallicGold,
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: AppSpacing.xl),

            // Value Props
            _buildValueProp(
              icon: Icons.headphones,
              text: 'Unlimited Audio Stories',
            ),
            const SizedBox(height: AppSpacing.md),
            _buildValueProp(
              icon: Icons.emoji_events,
              text: 'Surah Mastery Tracking',
            ),
            const SizedBox(height: AppSpacing.md),
            _buildValueProp(
              icon: Icons.quiz,
              text: 'Gamified Trivia & Quizzes',
            ),
            const SizedBox(height: AppSpacing.md),
            _buildValueProp(
              icon: Icons.local_fire_department,
              text: 'Streaks & XP Rewards',
            ),

            const Spacer(),

            if (_isLoading)
              const Center(
                child: CircularProgressIndicator(color: AppColors.metallicGold),
              )
            else ...[
              // Yearly Plan (Primary — pre-selected)
              _buildPricingCard(
                title: 'Yearly Access',
                subtitle: _offering?.annual?.storeProduct.priceString != null
                    ? '${_offering!.annual!.storeProduct.priceString}/year'
                    : '12 months at \$4.99/mo',
                price: _offering?.annual?.storeProduct.priceString ?? '\$59.99',
                period: '/year',
                badge: 'Best Value',
                isSelected: _selectedPackage?.packageType == PackageType.annual,
                onTap: () {
                  setState(() {
                    _selectedPackage = _offering?.annual;
                  });
                },
              ),

              const SizedBox(height: AppSpacing.sm),

              // Monthly Plan
              _buildPricingCard(
                title: 'Monthly Access',
                subtitle: 'Billed monthly',
                price:
                    _offering?.monthly?.storeProduct.priceString ?? '\$11.99',
                period: '/mo',
                isSelected:
                    _selectedPackage?.packageType == PackageType.monthly,
                onTap: () {
                  setState(() {
                    _selectedPackage = _offering?.monthly;
                  });
                },
              ),
            ],

            const SizedBox(height: AppSpacing.lg),

            // Subscribe Button
            _isPurchasing
                ? const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.metallicGold,
                    ),
                  )
                : PremiumButton(
                    text: 'SUBSCRIBE NOW',
                    onPressed: _handlePurchase,
                  ),

            const SizedBox(height: AppSpacing.sm),

            Text(
              'Cancel anytime. No hidden fees.',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.textTertiary,
                  ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: AppSpacing.sm),

            // Restore Purchases
            TextButton(
              onPressed: _isPurchasing ? null : _handleRestore,
              child: const Text(
                'Restore Purchases',
                style: TextStyle(
                  color: AppColors.textTertiary,
                  fontSize: 13,
                ),
              ),
            ),

            const SizedBox(height: AppSpacing.sm),
          ],
        ),
      ),
    );
  }

  Widget _buildValueProp({required IconData icon, required String text}) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.metallicGold.withValues(alpha: 0.1),
          ),
          child: Icon(icon, color: AppColors.metallicGold, size: 20),
        ),
        const SizedBox(width: AppSpacing.md),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: AppColors.textPrimary,
              ),
        ),
      ],
    );
  }

  Widget _buildPricingCard({
    required String title,
    required String subtitle,
    required String price,
    required String period,
    String? badge,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Material(
          color: isSelected
              ? AppColors.metallicGold.withValues(alpha: 0.08)
              : AppColors.deepCharcoal,
          borderRadius: BorderRadius.circular(AppRadius.md),
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(AppRadius.md),
            splashColor: AppColors.metallicGold.withValues(alpha: 0.15),
            child: Container(
              padding: const EdgeInsets.all(AppSpacing.lg),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppRadius.md),
                border: Border.all(
                  color: isSelected
                      ? AppColors.metallicGold
                      : AppColors.glassBorder,
                  width: isSelected ? 2 : 1,
                ),
              ),
              child: Row(
                children: [
                  // Radio indicator
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: isSelected
                            ? AppColors.metallicGold
                            : AppColors.textTertiary,
                        width: 2,
                      ),
                    ),
                    child: isSelected
                        ? Center(
                            child: Container(
                              width: 12,
                              height: 12,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.metallicGold,
                              ),
                            ),
                          )
                        : null,
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          subtitle,
                          style: const TextStyle(
                            color: AppColors.textSecondary,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        price,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: isSelected
                                  ? AppColors.metallicGold
                                  : AppColors.textPrimary,
                            ),
                      ),
                      Text(
                        period,
                        style: const TextStyle(
                          color: AppColors.textSecondary,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        // Badge
        if (badge != null)
          Positioned(
            top: -12,
            right: 16,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.md,
                vertical: 4,
              ),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [AppColors.metallicGold, AppColors.softGold],
                ),
                borderRadius: BorderRadius.circular(AppRadius.full),
              ),
              child: Text(
                badge,
                style: const TextStyle(
                  color: AppColors.richBlack,
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
