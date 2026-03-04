import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_constants.dart';
import '../../../shared/widgets/widgets.dart';
import '../providers/onboarding_provider.dart';

class FeaturesScreen extends ConsumerWidget {
  const FeaturesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Everything you need',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.xl),
          Expanded(
            child: ListView(
              children: [
                _buildFeature(
                  context,
                  title: 'Daily Deen Challenge',
                  description: 'Build a streak with quick daily quizzes.',
                  icon: Icons.calendar_today,
                ),
                _buildFeature(
                  context,
                  title: 'Surah Mastery Tracks',
                  description: 'Learn Juz Amma one surah at a time.',
                  icon: Icons.track_changes,
                ),
                _buildFeature(
                  context,
                  title: 'Audio Originals',
                  description: 'Immersive stories from the Seerah.',
                  icon: Icons.headphones,
                ),
                _buildFeature(
                  context,
                  title: 'Smart Repetition',
                  description: 'We bring back what you get wrong.',
                  icon: Icons.loop,
                ),
              ],
            ),
          ),
          PremiumButton(
            text: 'AMAZING',
            onPressed: () {
              ref.read(onboardingProvider.notifier).nextStep();
            },
          ),
          const SizedBox(height: AppSpacing.lg),
        ],
      ),
    );
  }

  Widget _buildFeature(
    BuildContext context, {
    required String title,
    required String description,
    required IconData icon,
  }) {
    return ContentCard(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              color: AppColors.metallicGold.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(AppRadius.md),
            ),
            child: Icon(
              icon,
              color: AppColors.metallicGold,
              size: 28,
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
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
