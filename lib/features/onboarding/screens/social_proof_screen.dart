import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_constants.dart';
import '../../../shared/widgets/widgets.dart';
import '../providers/onboarding_provider.dart';

class SocialProofScreen extends ConsumerWidget {
  const SocialProofScreen({super.key});

  static const _testimonials = [
    _Testimonial(
      name: 'Fatima A.',
      quote:
          'Deenified has changed how I approach the Qur\'an. It isn\'t just study; it\'s an experience.',
      stars: 5,
      color: Color(0xFF6C63FF),
    ),
    _Testimonial(
      name: 'Omar K.',
      quote:
          'My kids actually ask ME to open the app. The audio stories are incredible.',
      stars: 5,
      color: Color(0xFF2EC4B6),
    ),
    _Testimonial(
      name: 'Aisha M.',
      quote:
          'I\'m a busy medical student. 5 minutes a day keeps me connected to my Deen.',
      stars: 5,
      color: Color(0xFFFF6B6B),
    ),
    _Testimonial(
      name: 'Yusuf R.',
      quote:
          'The gamified trivia is addictive in the best way. I\'ve memorized more Surahs in 2 months than in 2 years.',
      stars: 5,
      color: Color(0xFFFFD93D),
    ),
    _Testimonial(
      name: 'Khadijah S.',
      quote:
          'As a revert, this app makes Islam feel approachable and beautiful. Jazakallahu Khair.',
      stars: 5,
      color: Color(0xFFFF9A8B),
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.lg),
      child: Column(
        children: [
          const SizedBox(height: AppSpacing.xl),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
            child: Text(
              'Join Thousands Already Learning',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: AppColors.metallicGold,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),

          const SizedBox(height: AppSpacing.sm),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
            child: Text(
              'Here\'s what our community says',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.textSecondary,
                  ),
            ),
          ),

          const SizedBox(height: AppSpacing.xl),

          // Horizontal scrolling testimonials
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
              itemCount: _testimonials.length,
              separatorBuilder: (_, __) => const SizedBox(width: AppSpacing.md),
              itemBuilder: (context, index) {
                final testimonial = _testimonials[index];
                return SizedBox(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: _TestimonialCard(testimonial: testimonial),
                );
              },
            ),
          ),

          const SizedBox(height: AppSpacing.xl),

          // Star rating summary
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  5,
                  (index) => const Icon(
                    Icons.star,
                    size: 20,
                    color: AppColors.metallicGold,
                  ),
                ),
                const SizedBox(width: AppSpacing.sm),
                Text(
                  '4.9 average',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                ),
              ],
            ),
          ),

          const SizedBox(height: AppSpacing.lg),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
            child: PremiumButton(
              text: 'JOIN THE COMMUNITY',
              onPressed: () {
                ref.read(onboardingProvider.notifier).nextStep();
              },
            ),
          ),

          const SizedBox(height: AppSpacing.xl),
        ],
      ),
    );
  }
}

class _TestimonialCard extends StatelessWidget {
  final _Testimonial testimonial;

  const _TestimonialCard({required this.testimonial});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.deepCharcoal,
        borderRadius: BorderRadius.circular(AppRadius.lg),
        border: Border.all(color: AppColors.glassBorder),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.3),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Quote icon
          const Icon(
            Icons.format_quote,
            size: 32,
            color: AppColors.metallicGold,
          ),

          const SizedBox(height: AppSpacing.md),

          // Quote text
          Expanded(
            child: Text(
              testimonial.quote,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontStyle: FontStyle.italic,
                    height: 1.5,
                    color: AppColors.textPrimary,
                  ),
            ),
          ),

          const SizedBox(height: AppSpacing.md),

          // Divider
          Container(
            height: 1,
            color: AppColors.glassBorder,
          ),

          const SizedBox(height: AppSpacing.md),

          // Author row
          Row(
            children: [
              // Avatar
              CircleAvatar(
                radius: 20,
                backgroundColor: testimonial.color,
                child: Text(
                  testimonial.name[0],
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),

              const SizedBox(width: AppSpacing.md),

              // Name & stars
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      testimonial.name,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: List.generate(
                        testimonial.stars,
                        (index) => const Icon(
                          Icons.star,
                          size: 14,
                          color: AppColors.metallicGold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Testimonial {
  final String name;
  final String quote;
  final int stars;
  final Color color;

  const _Testimonial({
    required this.name,
    required this.quote,
    required this.stars,
    required this.color,
  });
}
