import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/constants/app_constants.dart';
import '../../../providers/providers.dart';
import '../../../services/revenuecat_service.dart';
import '../../../shared/widgets/widgets.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider);
    final profileAsync = ref.watch(userProfileProvider);
    final streak = ref.watch(currentStreakProvider);
    final longestStreak = ref.watch(longestStreakProvider);

    return Scaffold(
      backgroundColor: AppColors.richBlack,
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        children: [
          // Avatar + Name — depends on profile data
          profileAsync.when(
            data: (profile) {
              final firstName = profile?['first_name']?.toString() ?? '';
              final lastName = profile?['last_name']?.toString() ?? '';
              final fullName = '$firstName $lastName'.trim();
              final displayName = fullName.isNotEmpty ? fullName : 'Learner';

              return Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.deepCharcoal,
                      border:
                          Border.all(color: AppColors.metallicGold, width: 3),
                    ),
                    child: Center(
                      child: Text(
                        displayName.isNotEmpty
                            ? displayName[0].toUpperCase()
                            : '?',
                        style:
                            Theme.of(context).textTheme.headlineLarge?.copyWith(
                                  color: AppColors.metallicGold,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.md),
                  Text(
                    displayName,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  if (user?.email != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      user!.email!,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppColors.textTertiary,
                          ),
                    ),
                  ],
                ],
              );
            },
            loading: () => const SizedBox(
              height: 150,
              child: Center(child: CircularProgressIndicator()),
            ),
            error: (_, __) => const SizedBox.shrink(),
          ),

          const SizedBox(height: AppSpacing.xl),

          // Stats Row
          profileAsync.when(
            data: (_) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStat(context, '$streak', 'Day\nStreak'),
                _buildStat(context, '$longestStreak', 'Longest\nStreak'),
              ],
            ),
            loading: () => const SizedBox(
              height: 60,
              child: Center(child: CircularProgressIndicator()),
            ),
            error: (_, __) => const SizedBox.shrink(),
          ),

          const SizedBox(height: AppSpacing.xl),

          const GoldenDivider(),

          const SizedBox(height: AppSpacing.xl),

          // Menu Items
          _buildMenuItem(
            context,
            icon: Icons.help_outline,
            title: 'Help & Support',
            subtitle: 'FAQs and contact',
            onTap: () {
              Navigator.of(context, rootNavigator: true).push(
                MaterialPageRoute(
                  builder: (_) => const _HelpSupportPage(),
                ),
              );
            },
          ),
          _buildMenuItem(
            context,
            icon: Icons.privacy_tip_outlined,
            title: 'Privacy Policy',
            subtitle: null,
            onTap: () => _launchUrl('https://deenified.com/pages/privacy'),
          ),
          _buildMenuItem(
            context,
            icon: Icons.description_outlined,
            title: 'Terms of Service',
            subtitle: null,
            onTap: () => _launchUrl('https://deenified.com/pages/terms'),
          ),
          _buildMenuItem(
            context,
            icon: Icons.restore,
            title: 'Manage Subscription',
            subtitle: null,
            onTap: () =>
                _launchUrl('https://apps.apple.com/account/subscriptions'),
          ),
          _buildMenuItem(
            context,
            ref: ref,
            icon: Icons.logout,
            title: 'Sign Out',
            subtitle: null,
            isDestructive: true,
            onTap: () => _showSignOutDialog(context, ref),
          ),

          const SizedBox(height: AppSpacing.xl),
        ],
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  void _showSignOutDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        backgroundColor: AppColors.deepCharcoal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.lg),
        ),
        title: const Text('Sign Out'),
        content: const Text('Are you sure you want to sign out?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text(
              'Cancel',
              style: TextStyle(color: AppColors.textSecondary),
            ),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(dialogContext);
              await RevenueCatService.instance.logout();
              await ref.read(authProvider.notifier).signOut();
              if (context.mounted) {
                context.go('/login');
              }
            },
            child: Text(
              'Sign Out',
              style: TextStyle(color: AppColors.error),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStat(BuildContext context, String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.metallicGold,
              ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: AppColors.textSecondary,
              ),
        ),
      ],
    );
  }

  Widget _buildMenuItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    String? subtitle,
    bool isDestructive = false,
    required VoidCallback onTap,
    WidgetRef? ref,
  }) {
    return ContentCard(
      onTap: onTap,
      child: Row(
        children: [
          Icon(
            icon,
            color: isDestructive ? AppColors.error : AppColors.softGold,
            size: 24,
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: isDestructive
                            ? AppColors.error
                            : AppColors.textPrimary,
                      ),
                ),
                if (subtitle != null)
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.textTertiary,
                        ),
                  ),
              ],
            ),
          ),
          if (!isDestructive)
            const Icon(
              Icons.chevron_right,
              color: AppColors.textTertiary,
            ),
        ],
      ),
    );
  }
}

// ============================================================
// Help & Support Page
// ============================================================
class _HelpSupportPage extends StatelessWidget {
  const _HelpSupportPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.richBlack,
      appBar: AppBar(
        title: const Text('Help & Support'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        children: [
          // FAQs Header
          Text(
            'Frequently Asked Questions',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.metallicGold,
                ),
          ),
          const SizedBox(height: AppSpacing.lg),

          _buildFaqItem(
            context,
            question: 'How do streaks work?',
            answer:
                'Complete a Daily Challenge each day to build your streak. If you miss a day, your current streak resets to 0 but your longest streak record is preserved forever.',
          ),
          _buildFaqItem(
            context,
            question: 'Can I practice any Surah?',
            answer:
                'Yes! All 114 Surahs are available for practice from day one. Navigate to the Surah tab, pick any surah, and start quizzing yourself at your own pace.',
          ),
          _buildFaqItem(
            context,
            question: 'How is the Daily Challenge generated?',
            answer:
                'Each day at midnight UTC, the app selects 7 random questions from our question bank. Everyone gets the same challenge for that day.',
          ),
          _buildFaqItem(
            context,
            question: 'Can I resume audio stories where I left off?',
            answer:
                'Absolutely. Your playback position is saved automatically. When you reopen a story, it picks up right where you stopped.',
          ),
          _buildFaqItem(
            context,
            question: 'What are Trivia categories?',
            answer:
                'Trivia lets you test your knowledge across four topics: Quran, Seerah (Prophetic biography), Prophets (stories & traditions), and General Islamic knowledge.',
          ),

          const SizedBox(height: AppSpacing.xxl),

          // Contact Section
          Text(
            'Contact Us',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.metallicGold,
                ),
          ),
          const SizedBox(height: AppSpacing.md),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(AppSpacing.lg),
            decoration: BoxDecoration(
              color: AppColors.deepCharcoal,
              borderRadius: BorderRadius.circular(AppRadius.lg),
              border: Border.all(color: AppColors.glassBorder),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.email_outlined,
                        color: AppColors.metallicGold, size: 20),
                    const SizedBox(width: AppSpacing.sm),
                    Text(
                      'support@deenified.com',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.textPrimary,
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.md),
                Text(
                  'We typically respond within 24-48 hours. For urgent issues, please include your account email in the subject line.',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textTertiary,
                        height: 1.5,
                      ),
                ),
              ],
            ),
          ),

          const SizedBox(height: AppSpacing.xxl),
        ],
      ),
    );
  }

  Widget _buildFaqItem(
    BuildContext context, {
    required String question,
    required String answer,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.md),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.deepCharcoal,
          borderRadius: BorderRadius.circular(AppRadius.md),
          border: Border.all(color: AppColors.glassBorder),
        ),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.md,
            vertical: AppSpacing.xs,
          ),
          childrenPadding: const EdgeInsets.fromLTRB(
            AppSpacing.md,
            0,
            AppSpacing.md,
            AppSpacing.md,
          ),
          iconColor: AppColors.metallicGold,
          collapsedIconColor: AppColors.textTertiary,
          shape: const Border(),
          collapsedShape: const Border(),
          title: Text(
            question,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          children: [
            Text(
              answer,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.textSecondary,
                    height: 1.5,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
