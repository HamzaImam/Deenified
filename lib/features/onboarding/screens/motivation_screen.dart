import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_constants.dart';
import '../../../shared/widgets/widgets.dart';
import '../providers/onboarding_provider.dart';

class MotivationScreen extends ConsumerWidget {
  const MotivationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingProvider);

    return Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'What is your main goal?',
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
                  label: 'Grow closer to Allah',
                  value: 'closeness',
                  isSelected: state.motivation == 'closeness',
                ),
                _buildOption(
                  context,
                  ref,
                  label: 'Be consistent with Deen',
                  value: 'consistency',
                  isSelected: state.motivation == 'consistency',
                ),
                _buildOption(
                  context,
                  ref,
                  label: 'Build confidence in prayer',
                  value: 'confidence',
                  isSelected: state.motivation == 'confidence',
                ),
                _buildOption(
                  context,
                  ref,
                  label: 'Halal fun & learning',
                  value: 'halal_fun',
                  isSelected: state.motivation == 'halal_fun',
                ),
              ],
            ),
          ),
          PremiumButton(
            text: 'CONTINUE',
            onPressed: state.motivation != null
                ? () => ref.read(onboardingProvider.notifier).nextStep()
                : () {},
            isOutlined: state.motivation == null,
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
    required String value,
    required bool isSelected,
  }) {
    return ContentCard(
      selected: isSelected,
      onTap: () => ref.read(onboardingProvider.notifier).setMotivation(value),
      child: Row(
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: isSelected
                      ? AppColors.metallicGold
                      : AppColors.textPrimary,
                ),
          ),
          const Spacer(),
          if (isSelected)
            const Icon(
              Icons.check_circle,
              color: AppColors.metallicGold,
              size: 24,
            ),
        ],
      ),
    );
  }
}
