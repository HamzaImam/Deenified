import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/app_constants.dart';
import '../../../shared/widgets/widgets.dart';
import '../../../providers/providers.dart';

class SurahListScreen extends ConsumerWidget {
  const SurahListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final surahsAsync = ref.watch(surahsProvider);

    return Scaffold(
      backgroundColor: AppColors.richBlack,
      appBar: AppBar(
        title: const Text('Surah Mastery'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: surahsAsync.when(
        data: (surahs) => _buildSurahList(context, surahs),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
    );
  }

  Widget _buildSurahList(
      BuildContext context, List<Map<String, dynamic>> surahs) {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.md,
        AppSpacing.md,
        AppSpacing.md,
        100, // Extra space to clear the bottom nav bar
      ),
      itemCount: surahs.length,
      itemBuilder: (context, index) {
        final surah = surahs[index];

        return Padding(
          padding: const EdgeInsets.only(bottom: AppSpacing.sm),
          child: ContentCard(
            onTap: () => context.push('/surah/${surah['id']}'),
            child: Row(
              children: [
                // Surah Number Badge
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: AppColors.metallicGold.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(AppRadius.sm),
                    border: Border.all(
                      color: AppColors.metallicGold,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '${surah['id']}',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: AppColors.metallicGold,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                // Surah Info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        surah['name_transliteration'] ?? 'Surah',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.textPrimary,
                                ),
                      ),
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          Text(
                            surah['name_arabic'] ?? '',
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: AppColors.softGold,
                                    ),
                          ),
                          const SizedBox(width: AppSpacing.sm),
                          Text(
                            '• ${surah['total_ayahs'] ?? 0} Ayahs',
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: AppColors.textTertiary,
                                    ),
                          ),
                          const SizedBox(width: AppSpacing.sm),
                          Text(
                            '• Juz ${surah['juz'] ?? ''}',
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: AppColors.textTertiary,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Arrow indicator
                Icon(
                  Icons.chevron_right,
                  color: AppColors.textTertiary,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
