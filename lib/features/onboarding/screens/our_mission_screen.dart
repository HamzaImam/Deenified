import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_constants.dart';
import '../../../shared/widgets/widgets.dart';
import '../providers/onboarding_provider.dart';

class OurMissionScreen extends ConsumerWidget {
  const OurMissionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),

          // Decorative icon
          Container(
            padding: const EdgeInsets.all(AppSpacing.lg),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.metallicGold.withValues(alpha: 0.2),
                  AppColors.softGold.withValues(alpha: 0.05),
                ],
              ),
              border: Border.all(
                color: AppColors.metallicGold.withValues(alpha: 0.4),
                width: 1.5,
              ),
            ),
            child: const Icon(
              Icons.auto_awesome,
              size: 48,
              color: AppColors.metallicGold,
            ),
          ),

          const SizedBox(height: AppSpacing.xl),

          // Headline
          Text(
            'Our Mission:',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: AppColors.textSecondary,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w500,
                ),
          ),

          const SizedBox(height: AppSpacing.sm),

          Text(
            'Make Deen Easy\nto Return To.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: AppColors.metallicGold,
                  height: 1.2,
                  fontWeight: FontWeight.bold,
                ),
          ),

          const SizedBox(height: AppSpacing.xl),

          // Body
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.md,
              vertical: AppSpacing.lg,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppRadius.lg),
              color: AppColors.deepCharcoal.withValues(alpha: 0.5),
              border: Border.all(
                color: AppColors.glassBorder,
              ),
            ),
            child: Text(
              'Low iman isn\'t always rebellion; often it\'s just burnout.\n\n'
              'Deenified teaches Qur\'an and Islamic knowledge through engaging, '
              'cinematic audio-visual stories. We replace long lectures with fun, '
              'gamified trivia.\n\n'
              'Built for students, professionals, and parents learning alongside '
              'their children.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColors.textSecondary,
                    height: 1.6,
                  ),
            ),
          ),

          const Spacer(),

          // CTA
          PremiumButton(
            text: 'BEGIN MY JOURNEY',
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
