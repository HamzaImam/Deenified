import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_constants.dart';
import '../../../shared/widgets/widgets.dart';
import '../providers/onboarding_provider.dart';

class ValueStackScreen extends ConsumerWidget {
  const ValueStackScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Your Deenified Pro Plan',
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.xl),
          Expanded(
            child: ListView(
              children: [
                _buildValueItem(context, 'Full Access to 37 Juz Amma Tracks',
                    'Value: \$49'),
                _buildValueItem(
                    context, 'Unlimited Audio Stories', 'Value: \$29/mo'),
                _buildValueItem(
                    context, 'Advanced Quizzes & Analytics', 'Value: \$19/mo'),
                _buildValueItem(
                    context, 'Daily Deen Challenges', 'Value: Priceless'),
                const SizedBox(height: AppSpacing.lg),
                Container(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  decoration: BoxDecoration(
                    color: AppColors.metallicGold,
                    borderRadius: BorderRadius.circular(AppRadius.md),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Total Value',
                        style:
                            Theme.of(context).textTheme.labelMedium?.copyWith(
                                  color: AppColors.richBlack,
                                ),
                      ),
                      Text(
                        '\$100+/month',
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  color: AppColors.richBlack,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.lineThrough,
                                ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          PremiumButton(
            text: 'SEE MY PRICE',
            onPressed: () {
              ref.read(onboardingProvider.notifier).nextStep();
            },
          ),
          const SizedBox(height: AppSpacing.lg),
        ],
      ),
    );
  }

  Widget _buildValueItem(BuildContext context, String text, String subtext) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.md),
      child: Row(
        children: [
          const Icon(Icons.check_circle, color: AppColors.metallicGold),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  subtext,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textTertiary,
                        decoration: TextDecoration.lineThrough,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
