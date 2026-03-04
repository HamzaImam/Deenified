import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_constants.dart';
import '../../../shared/widgets/widgets.dart';
import '../providers/onboarding_provider.dart';

class DiagnosisScreen extends ConsumerWidget {
  const DiagnosisScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingProvider);

    // Dynamic text based on selection (simple logic for MVP)
    String problem = 'Consistency is difficult';
    if (state.barriers.contains('translation')) {
      problem = 'Arabic feels like a barrier';
    } else if (state.barriers.contains('boring')) {
      problem = 'Traditional methods feel dry';
    }

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
              color: AppColors.deepCharcoal,
              border: Border.all(color: AppColors.glassBorder),
            ),
            child: const Icon(
              Icons.analytics_outlined,
              size: 48,
              color: AppColors.softGold,
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
          Text(
            'We\'ve analyzed your profile.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppColors.textSecondary,
                ),
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            'Here is the truth:',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: AppSpacing.xl),
          Container(
            padding: const EdgeInsets.all(AppSpacing.lg),
            decoration: BoxDecoration(
              color: AppColors.deepCharcoal,
              borderRadius: BorderRadius.circular(AppRadius.md),
              border: Border.all(
                  color: AppColors.metallicGold.withValues(alpha: 0.3)),
            ),
            child: Column(
              children: [
                Text(
                  problem,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: AppColors.error, // Use error color for "Problem"
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  '...without the right system.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
          Text(
            'But with small, bite-sized daily habits, you can master your Deen effortlessly.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  height: 1.5,
                ),
          ),
          const Spacer(),
          PremiumButton(
            text: 'SHOW ME THE PLAN',
            onPressed: () {
              ref.read(onboardingProvider.notifier).nextStep();
            },
          ),
          const SizedBox(height: AppSpacing.xl),
        ],
      ),
    );
  }
}
