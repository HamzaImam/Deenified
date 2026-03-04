import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/router/app_router.dart';
import '../../../providers/providers.dart';
import '../../../services/tts_service.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsync = ref.watch(userProfileProvider);

    return Scaffold(
      backgroundColor: AppColors.richBlack,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // App Bar with greeting
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _getGreeting(),
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: AppColors.textSecondary,
                                  ),
                        ),
                        const SizedBox(height: 4),
                        userAsync.when(
                          data: (user) => Text(
                            user?['first_name']?.toString().isNotEmpty == true
                                ? user!['first_name']
                                : 'Learner',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          loading: () => const Text('Loading...'),
                          error: (_, __) => const Text('Guest'),
                        ),
                      ],
                    ),
                    // Streak Badge
                    _buildStreakBadge(context, userAsync),
                  ],
                ),
              ),
            ),

            // Daily Challenge Card
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                child: _DailyChallengeCard(),
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.xl)),

            // Word of the Day Card
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                child: _WordOfTheDayCard(),
              ),
            ),

            // Section: Audio Stories
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Audio Originals',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    TextButton(
                      onPressed: () => context.go(AppRoutes.stories),
                      child: const Text('See All'),
                    ),
                  ],
                ),
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.md)),

            // Audio Stories Preview
            SliverToBoxAdapter(
              child: SizedBox(
                height: 200,
                child: _AudioStoriesSection(),
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.xxl)),
          ],
        ),
      ),
    );
  }

  String _getGreeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) return 'Good Morning';
    if (hour < 17) return 'Good Afternoon';
    return 'Good Evening';
  }

  Widget _buildStreakBadge(
      BuildContext context, AsyncValue<Map<String, dynamic>?> userAsync) {
    return userAsync.when(
      data: (user) {
        final streak = user?['current_streak'] ?? 0;
        return GestureDetector(
          onTap: () {
            // Show streak info modal
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.md,
              vertical: AppSpacing.sm,
            ),
            decoration: BoxDecoration(
              color: AppColors.deepCharcoal,
              borderRadius: BorderRadius.circular(AppRadius.full),
              border: Border.all(
                color:
                    streak > 0 ? AppColors.metallicGold : AppColors.glassBorder,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.local_fire_department,
                  color: streak > 0
                      ? AppColors.metallicGold
                      : AppColors.textTertiary,
                  size: 20,
                ),
                const SizedBox(width: 4),
                Text(
                  '$streak',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: streak > 0
                            ? AppColors.metallicGold
                            : AppColors.textTertiary,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        );
      },
      loading: () => const SizedBox.shrink(),
      error: (_, __) => const SizedBox.shrink(),
    );
  }
}

class _DailyChallengeCard extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        // Navigate to daily challenge
        context.push('/daily-challenge');
      },
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.lg),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.metallicGold.withValues(alpha: 0.2),
              AppColors.deepCharcoal,
            ],
          ),
          borderRadius: BorderRadius.circular(AppRadius.lg),
          border:
              Border.all(color: AppColors.metallicGold.withValues(alpha: 0.3)),
        ),
        child: Row(
          children: [
            // Icon
            Container(
              padding: const EdgeInsets.all(AppSpacing.md),
              decoration: BoxDecoration(
                color: AppColors.metallicGold,
                borderRadius: BorderRadius.circular(AppRadius.md),
              ),
              child: const Icon(
                Icons.flash_on,
                color: AppColors.richBlack,
                size: 28,
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            // Text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Daily Deen Challenge',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '7 questions • Keep your streak alive!',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.textSecondary,
                        ),
                  ),
                ],
              ),
            ),
            // Arrow
            const Icon(
              Icons.arrow_forward_ios,
              color: AppColors.metallicGold,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}

class _WordOfTheDayCard extends StatelessWidget {
  static const _words = [
    {'arabic': 'سَلَام', 'transliteration': 'Salaam', 'meaning': 'Peace'},
    {'arabic': 'صَبْر', 'transliteration': 'Sabr', 'meaning': 'Patience'},
    {'arabic': 'تَوْبَة', 'transliteration': 'Tawbah', 'meaning': 'Repentance'},
    {'arabic': 'نُور', 'transliteration': 'Noor', 'meaning': 'Light'},
    {'arabic': 'رَحْمَة', 'transliteration': 'Rahmah', 'meaning': 'Mercy'},
    {'arabic': 'شُكْر', 'transliteration': 'Shukr', 'meaning': 'Gratitude'},
    {'arabic': 'تَوَكُّل', 'transliteration': 'Tawakkul', 'meaning': 'Trust in Allah'},
    {'arabic': 'عِلْم', 'transliteration': 'Ilm', 'meaning': 'Knowledge'},
    {'arabic': 'إِيمَان', 'transliteration': 'Iman', 'meaning': 'Faith'},
    {'arabic': 'تَقْوَى', 'transliteration': 'Taqwa', 'meaning': 'God-consciousness'},
    {'arabic': 'حِكْمَة', 'transliteration': 'Hikmah', 'meaning': 'Wisdom'},
    {'arabic': 'بَرَكَة', 'transliteration': 'Barakah', 'meaning': 'Blessing'},
    {'arabic': 'دُعَاء', 'transliteration': "Du'a", 'meaning': 'Supplication'},
    {'arabic': 'إِحْسَان', 'transliteration': 'Ihsan', 'meaning': 'Excellence'},
    {'arabic': 'هِدَايَة', 'transliteration': 'Hidayah', 'meaning': 'Guidance'},
    {'arabic': 'أَمَانَة', 'transliteration': 'Amanah', 'meaning': 'Trust'},
    {'arabic': 'جَنَّة', 'transliteration': 'Jannah', 'meaning': 'Paradise'},
    {'arabic': 'ذِكْر', 'transliteration': 'Dhikr', 'meaning': 'Remembrance'},
    {'arabic': 'حَيَاء', 'transliteration': "Haya'", 'meaning': 'Modesty'},
    {'arabic': 'عَدْل', 'transliteration': "'Adl", 'meaning': 'Justice'},
    {'arabic': 'رِزْق', 'transliteration': 'Rizq', 'meaning': 'Provision'},
    {'arabic': 'فِطْرَة', 'transliteration': 'Fitrah', 'meaning': 'Natural disposition'},
    {'arabic': 'خُشُوع', 'transliteration': "Khushu'", 'meaning': 'Humility in prayer'},
    {'arabic': 'مَغْفِرَة', 'transliteration': 'Maghfirah', 'meaning': 'Forgiveness'},
    {'arabic': 'يَقِين', 'transliteration': 'Yaqeen', 'meaning': 'Certainty'},
    {'arabic': 'سَكِينَة', 'transliteration': 'Sakeenah', 'meaning': 'Tranquility'},
    {'arabic': 'عَفْو', 'transliteration': "'Afuw", 'meaning': 'Pardon'},
    {'arabic': 'زُهْد', 'transliteration': 'Zuhd', 'meaning': 'Asceticism'},
    {'arabic': 'وَفَاء', 'transliteration': "Wafa'", 'meaning': 'Loyalty'},
    {'arabic': 'حُبّ', 'transliteration': 'Hubb', 'meaning': 'Love'},
    {'arabic': 'قَلْب', 'transliteration': 'Qalb', 'meaning': 'Heart'},
  ];

  Map<String, String> get _todayWord {
    final dayOfYear =
        DateTime.now().difference(DateTime(DateTime.now().year)).inDays;
    return _words[dayOfYear % _words.length].cast<String, String>();
  }

  @override
  Widget build(BuildContext context) {
    final word = _todayWord;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.lg,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.metallicGold, width: 1),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'WORD OF THE DAY',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: AppColors.metallicGold,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                ),
                const SizedBox(height: AppSpacing.md),
                Text(
                  word['arabic']!,
                  style: const TextStyle(
                    fontSize: 40,
                    fontFamily: 'serif',
                    color: Colors.white,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  word['transliteration']!,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  word['meaning']!,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                ),
              ],
            ),
          ),
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.metallicGold.withValues(alpha: 0.15),
              border: Border.all(color: AppColors.metallicGold, width: 1.5),
            ),
            child: IconButton(
              icon: Icon(
                Icons.volume_up_rounded,
                color: AppColors.metallicGold,
                size: 28,
              ),
              onPressed: () {
                TtsService.instance.pronounce(word['transliteration']!);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _AudioStoriesSection extends ConsumerWidget {
  Widget _buildStoryCover(Map<String, dynamic> story) {
    final coverPath = story['cover_image_url'] as String?;
    if (coverPath == null || coverPath.isEmpty) {
      return Center(
        child: Icon(Icons.headphones, size: 40, color: AppColors.metallicGold),
      );
    }

    final url = Supabase.instance.client.storage
        .from('cover-images')
        .getPublicUrl(coverPath);

    return Image.network(
      url,
      fit: BoxFit.cover,
      width: double.infinity,
      height: 100,
      errorBuilder: (_, __, ___) => Center(
        child: Icon(Icons.headphones, size: 40, color: AppColors.metallicGold),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storiesAsync = ref.watch(audioStoriesProvider);

    return storiesAsync.when(
      data: (stories) {
        if (stories.isEmpty) {
          return const Center(child: Text('No stories available'));
        }

        // Show first 3 stories
        final displayStories = stories.take(3).toList();

        return ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
          itemCount: displayStories.length,
          separatorBuilder: (_, __) => const SizedBox(width: AppSpacing.md),
          itemBuilder: (context, index) {
            final story = displayStories[index];
            final duration = story['duration_seconds'] ?? 0;
            final minutes = duration ~/ 60;

            return GestureDetector(
              onTap: () => context.push('/player/${story['id']}'),
              child: Container(
                width: 160,
                decoration: BoxDecoration(
                  color: AppColors.deepCharcoal,
                  borderRadius: BorderRadius.circular(AppRadius.md),
                  border: Border.all(color: AppColors.glassBorder),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Cover Art
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: AppColors.richBlack,
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(AppRadius.md),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(AppRadius.md),
                        ),
                        child: _buildStoryCover(story),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(AppSpacing.sm),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            story['title'] ?? 'Untitled',
                            style: Theme.of(context).textTheme.labelLarge,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 2),
                          Text(
                            '$minutes min',
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: AppColors.textTertiary,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text('Error: $e')),
    );
  }
}
