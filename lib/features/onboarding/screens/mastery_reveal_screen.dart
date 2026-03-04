import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_constants.dart';
import '../../../shared/widgets/widgets.dart';
import '../providers/onboarding_provider.dart';

class MasteryRevealScreen extends ConsumerWidget {
  const MasteryRevealScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),

          // Visual representation of open exploration
          SizedBox(
            height: 300,
            child: Center(
              child: Wrap(
                spacing: AppSpacing.md,
                runSpacing: AppSpacing.md,
                alignment: WrapAlignment.center,
                children: [
                  _buildSurahChip(context, 'Al-Fatiha'),
                  _buildSurahChip(context, 'Al-Baqarah'),
                  _buildSurahChip(context, 'Ya-Sin'),
                  _buildSurahChip(context, 'Ar-Rahman'),
                  _buildSurahChip(context, 'Al-Mulk'),
                  _buildSurahChip(context, 'Al-Kahf'),
                ],
              ),
            ),
          ),

          const SizedBox(height: AppSpacing.xl),

          Text(
            'Explore Any Surah',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: AppColors.metallicGold,
                  fontWeight: FontWeight.bold,
                ),
          ),

          const SizedBox(height: AppSpacing.md),

          Text(
            'Practice and quiz yourself on any Surah you want. No locks, no barriers — learn at your own pace.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppColors.textSecondary,
                  height: 1.5,
                ),
          ),

          const Spacer(),

          PremiumButton(
            text: 'SOUNDS GOOD',
            onPressed: () {
              ref.read(onboardingProvider.notifier).nextStep();
            },
          ),

          const SizedBox(height: AppSpacing.xl),
        ],
      ),
    );
  }

  Widget _buildSurahChip(BuildContext context, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: AppColors.deepCharcoal,
        borderRadius: BorderRadius.circular(AppRadius.full),
        border: Border.all(
          color: AppColors.metallicGold,
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.metallicGold.withValues(alpha: 0.15),
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.auto_stories,
            color: AppColors.metallicGold,
            size: 18,
          ),
          const SizedBox(width: AppSpacing.xs),
          Text(
            label,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: AppColors.textPrimary,
                ),
          ),
        ],
      ),
    );
  }
}
