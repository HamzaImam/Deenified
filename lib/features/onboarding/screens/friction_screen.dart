import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_constants.dart';
import '../../../shared/widgets/widgets.dart';
import '../providers/onboarding_provider.dart';

class FrictionScreen extends ConsumerWidget {
  const FrictionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingProvider);

    return Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'What stops you from practicing?',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            'Select all that apply',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.textTertiary,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.xl),
          Expanded(
            child: ListView(
              children: [
                _buildOption(
                  context,
                  ref,
                  label: 'Hard to translate Arabic',
                  value: 'translation',
                  isSelected: state.barriers.contains('translation'),
                ),
                _buildOption(
                  context,
                  ref,
                  label: 'Can\'t stay consistent',
                  value: 'consistency',
                  isSelected: state.barriers.contains('consistency'),
                ),
                _buildOption(
                  context,
                  ref,
                  label: 'Too busy / No time',
                  value: 'time',
                  isSelected: state.barriers.contains('time'),
                ),
                _buildOption(
                  context,
                  ref,
                  label: 'Resources are boring',
                  value: 'boring',
                  isSelected: state.barriers.contains('boring'),
                ),
              ],
            ),
          ),
          PremiumButton(
            text: 'CONTINUE',
            onPressed: state.barriers.isNotEmpty
                ? () => ref.read(onboardingProvider.notifier).nextStep()
                : () {},
            isOutlined: state.barriers.isEmpty,
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
      onTap: () => ref.read(onboardingProvider.notifier).toggleBarrier(value),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: isSelected
                        ? AppColors.metallicGold
                        : AppColors.textPrimary,
                  ),
            ),
          ),
          if (isSelected)
            const Icon(
              Icons.check_box,
              color: AppColors.metallicGold,
              size: 24,
            )
          else
            const Icon(
              Icons.check_box_outline_blank,
              color: AppColors.textTertiary,
              size: 24,
            ),
        ],
      ),
    );
  }
}
