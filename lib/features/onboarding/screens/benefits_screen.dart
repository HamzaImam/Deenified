import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_constants.dart';
import '../../../shared/widgets/widgets.dart';
import '../providers/onboarding_provider.dart';

class BenefitsScreen extends ConsumerWidget {
  const BenefitsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Text(
            'The Transformation',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppColors.metallicGold,
                  letterSpacing: 2,
                ),
          ),
          const SizedBox(height: AppSpacing.lg),
          Text(
            'From distant & overwhelmed...',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: AppColors.textTertiary,
                ),
          ),
          const SizedBox(height: AppSpacing.lg),
          const Icon(
            Icons.arrow_downward,
            color: AppColors.metallicGold,
            size: 32,
          ),
          const SizedBox(height: AppSpacing.lg),
          Text(
            'To confident & connected.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.bold,
                  height: 1.3,
                ),
          ),
          const SizedBox(height: AppSpacing.xl),
          Text(
            'Imagine facing your Lord with a heart full of His words.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontStyle: FontStyle.italic,
                  color: AppColors.textSecondary,
                ),
          ),
          const Spacer(),
          PremiumButton(
            text: 'CONTINUE',
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
