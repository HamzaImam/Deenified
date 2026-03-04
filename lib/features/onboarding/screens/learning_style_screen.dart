import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_constants.dart';
import '../../../shared/widgets/widgets.dart';
import '../providers/onboarding_provider.dart';

class LearningStyleScreen extends ConsumerWidget {
  const LearningStyleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingProvider);

    return Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'How do you learn best?',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.xl),
          Expanded(
            child: ListView(
              children: [
                _buildOption(
                  context,
                  ref,
                  label: 'Visual',
                  subLabel: 'Quizzes, text, and images',
                  icon: Icons.visibility,
                  value: 'visual',
                  isSelected: state.learningStyle == 'visual',
                ),
                _buildOption(
                  context,
                  ref,
                  label: 'Auditory',
                  subLabel: 'Listening to stories & recitations',
                  icon: Icons.headphones,
                  value: 'auditory',
                  isSelected: state.learningStyle == 'auditory',
                ),
                _buildOption(
                  context,
                  ref,
                  label: 'Both',
                  subLabel: 'I like a mix of everything',
                  icon: Icons.auto_awesome,
                  value: 'both',
                  isSelected: state.learningStyle == 'both',
                ),
              ],
            ),
          ),
          PremiumButton(
            text: 'BUILD MY PLAN',
            onPressed: state.learningStyle != null
                ? () => ref.read(onboardingProvider.notifier).nextStep()
                : () {},
            isOutlined: state.learningStyle == null,
          ),
          const SizedBox(height: AppSpacing.lg),
        ],
      ),
    );
  }

  Widget _buildOption(
    BuildContext context,
    WidgetRef ref, {
    required String label,
    required String subLabel,
    required IconData icon,
    required String value,
    required bool isSelected,
  }) {
    return ContentCard(
      selected: isSelected,
      onTap: () =>
          ref.read(onboardingProvider.notifier).setLearningStyle(value),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(AppSpacing.sm),
            decoration: BoxDecoration(
              color: isSelected
                  ? AppColors.metallicGold.withValues(alpha: 0.1)
                  : AppColors.deepCharcoal,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color:
                  isSelected ? AppColors.metallicGold : AppColors.textSecondary,
              size: 24,
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: isSelected
                            ? AppColors.metallicGold
                            : AppColors.textPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  subLabel,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
