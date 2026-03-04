import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_constants.dart';
import '../../../shared/widgets/widgets.dart';
import '../providers/onboarding_provider.dart';

class ExitIntentScreen extends ConsumerWidget {
  const ExitIntentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(AppSpacing.lg),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.error.withValues(alpha: 0.1),
            ),
            child: const Icon(Icons.percent, size: 64, color: AppColors.error),
          ),
          const SizedBox(height: AppSpacing.xl),
          Text(
            'Wait! Don\'t leave empty handed.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: AppSpacing.xl),
          ContentCard(
            selected: true,
            child: Column(
              children: [
                const Text('Special One-Time Offer',
                    style: TextStyle(color: AppColors.metallicGold)),
                const SizedBox(height: AppSpacing.md),
                Text('50% OFF',
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        color: AppColors.metallicGold,
                        fontWeight: FontWeight.bold)),
                const Text('Your First Year'),
                const Divider(height: 32, color: AppColors.glassBorder),
                Text(
                  '\$29.99 / year',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(decoration: TextDecoration.underline),
                ),
              ],
            ),
          ),
          const Spacer(),
          PremiumButton(
            text: 'CLAIM OFFER',
            onPressed: () {
              ref.read(onboardingProvider.notifier).completeOnboarding();
            },
          ),
          TextButton(
            onPressed: () {
              ref.read(onboardingProvider.notifier).completeOnboarding();
            },
            child: const Text('No thanks, take me to the free app'),
          ),
        ],
      ),
    );
  }
}
