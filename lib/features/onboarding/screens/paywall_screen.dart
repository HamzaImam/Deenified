import 'package:flutter/material.dart';
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
        // Purchase successful — go to signup
        if (mounted) {
          ref.read(onboardingProvider.notifier).nextStep();
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

  void _handleClose() {
    // Show exit intent modal instead of closing
    _showExitIntentModal();
  }

  Future<void> _showExitIntentModal() async {
    final result = await showModalBottomSheet<bool>(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => _ExitIntentBottomSheet(offering: _offering),
    );

    if (result == true && mounted) {
      // User accepted the deal and purchase succeeded — go to signup
      ref.read(onboardingProvider.notifier).nextStep();
    } else if (result == false && mounted) {
      // User declined — go to signup as free user
      ref.read(onboardingProvider.notifier).nextStep();
    }
    // If null (dismissed), stay on paywall
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          _handleClose();
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          children: [
            // Top bar with close button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.close, color: AppColors.textTertiary),
                  onPressed: _handleClose,
                ),
                TextButton(
                  onPressed: () async {
                    await RevenueCatService.instance.restorePurchases();
                    if (mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Purchases restored successfully.'),
                        ),
                      );
                    }
                  },
                  child: const Text(
                    'Restore',
                    style: TextStyle(color: AppColors.textTertiary),
                  ),
                ),
              ],
            ),

            const SizedBox(height: AppSpacing.md),

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
                subtitle: '12 months at \$4.99/mo',
                price: '\$59.99',
                period: '/year',
                badge: 'Best Value — 61% OFF',
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
                price: '\$11.99',
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

            const Spacer(),

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

            const SizedBox(height: AppSpacing.md),
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
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.all(AppSpacing.lg),
            decoration: BoxDecoration(
              color: isSelected
                  ? AppColors.metallicGold.withValues(alpha: 0.08)
                  : AppColors.deepCharcoal,
              borderRadius: BorderRadius.circular(AppRadius.md),
              border: Border.all(
                color:
                    isSelected ? AppColors.metallicGold : AppColors.glassBorder,
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
      ),
    );
  }
}

/// Exit Intent Modal Bottom Sheet
class _ExitIntentBottomSheet extends StatefulWidget {
  final Offering? offering;

  const _ExitIntentBottomSheet({this.offering});

  @override
  State<_ExitIntentBottomSheet> createState() => _ExitIntentBottomSheetState();
}

class _ExitIntentBottomSheetState extends State<_ExitIntentBottomSheet> {
  bool _isPurchasing = false;

  Future<void> _handleDeal() async {
    final yearlyPackage = widget.offering?.annual;
    if (yearlyPackage == null) return;

    setState(() => _isPurchasing = true);

    try {
      final customerInfo =
          await RevenueCatService.instance.purchasePackage(yearlyPackage);

      if (customerInfo != null &&
          customerInfo.entitlements.active
              .containsKey(RevenueCatService.premiumEntitlement)) {
        if (mounted) {
          Navigator.of(context).pop(true); // Deal accepted & purchased
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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppSpacing.md),
      padding: const EdgeInsets.all(AppSpacing.xl),
      decoration: BoxDecoration(
        color: AppColors.deepCharcoal,
        borderRadius: BorderRadius.circular(AppRadius.xl),
        border: Border.all(
          color: AppColors.metallicGold.withValues(alpha: 0.4),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.metallicGold.withValues(alpha: 0.15),
            blurRadius: 24,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Attention icon
          Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.error.withValues(alpha: 0.1),
            ),
            child: const Icon(
              Icons.local_offer,
              size: 40,
              color: AppColors.metallicGold,
            ),
          ),

          const SizedBox(height: AppSpacing.lg),

          // Headline
          Text(
            'WAIT!',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: AppColors.metallicGold,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2,
                ),
          ),

          const SizedBox(height: AppSpacing.md),

          // Offer copy
          Text(
            'Start your Islamic learning journey today',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppColors.textSecondary,
                ),
          ),

          const SizedBox(height: AppSpacing.sm),

          // Price — dynamic from actual package
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                widget.offering?.annual?.storeProduct.priceString ?? '\$59.99',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: AppColors.metallicGold,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(width: 4),
              Text(
                '/year',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.textSecondary,
                    ),
              ),
            ],
          ),

          const SizedBox(height: AppSpacing.xs),

          // Savings badge
          Container(
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
            child: const Text(
              'Save 58% vs Monthly',
              style: TextStyle(
                color: AppColors.richBlack,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),

          const SizedBox(height: AppSpacing.sm),

          Text(
            'That\'s just \$4.99/month — cancel anytime',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.textTertiary,
                ),
          ),

          const SizedBox(height: AppSpacing.xl),

          // Get Deal button
          _isPurchasing
              ? const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.metallicGold,
                  ),
                )
              : SizedBox(
                  width: double.infinity,
                  child: PremiumButton(
                    text: 'GET THIS DEAL',
                    onPressed: _handleDeal,
                  ),
                ),

          const SizedBox(height: AppSpacing.md),

          // Decline button
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(false); // Declined
            },
            child: const Text(
              'No thanks, I\'ll pass',
              style: TextStyle(
                color: AppColors.textTertiary,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
