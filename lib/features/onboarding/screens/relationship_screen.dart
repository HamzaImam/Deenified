import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_constants.dart';
import '../../../shared/widgets/widgets.dart';
import '../providers/onboarding_provider.dart';

class RelationshipScreen extends ConsumerWidget {
  const RelationshipScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingProvider);

    return Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'How would you describe your relationship with the Qur\'an?',
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.xl),
          Expanded(
            child: ListView(
              children: [
                _buildOption(
                  context,
                  ref,
                  label: 'Distant',
                  subLabel: 'I rarely read or understand it.',
                  value: 'distant',
                  isSelected: state.relationshipWithAllah == 'distant',
                ),
                _buildOption(
                  context,
                  ref,
                  label: 'On and Off',
                  subLabel: 'I try, but struggle to be consistent.',
                  value: 'on_off',
                  isSelected: state.relationshipWithAllah == 'on_off',
                ),
                _buildOption(
                  context,
                  ref,
                  label: 'Growing',
                  subLabel: 'I read regularly but want to go deeper.',
                  value: 'growing',
                  isSelected: state.relationshipWithAllah == 'growing',
                ),
                _buildOption(
                  context,
                  ref,
                  label: 'Strong',
                  subLabel: 'It is part of my daily life.',
                  value: 'strong',
                  isSelected: state.relationshipWithAllah == 'strong',
                ),
              ],
            ),
          ),
          PremiumButton(
            text: 'CONTINUE',
            onPressed: state.relationshipWithAllah != null
                ? () => ref.read(onboardingProvider.notifier).nextStep()
                : () {},
            isOutlined: state.relationshipWithAllah == null,
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
    required String value,
    required bool isSelected,
  }) {
    return ContentCard(
      selected: isSelected,
      onTap: () =>
          ref.read(onboardingProvider.notifier).setRelationshipWithAllah(value),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
              const Spacer(),
              if (isSelected)
                const Icon(
                  Icons.radio_button_checked,
                  color: AppColors.metallicGold,
                  size: 24,
                )
              else
                Icon(
                  Icons.radio_button_off,
                  color: AppColors.textTertiary,
                  size: 24,
                ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            subLabel,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
