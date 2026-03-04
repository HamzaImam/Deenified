import 'package:go_router/go_router.dart';

import '../../features/onboarding/screens/splash_screen.dart';
import '../../features/onboarding/screens/onboarding_flow_screen.dart';
import '../../features/auth/screens/login_screen.dart';
import '../../features/home/screens/main_shell_screen.dart';
import '../../features/home/screens/home_screen.dart';
import '../../features/surah_mastery/screens/surah_list_screen.dart';
import '../../features/surah_mastery/screens/surah_detail_screen.dart';
import '../../features/surah_mastery/screens/quiz_screen.dart';
import '../../features/surah_mastery/screens/surah_reader_screen.dart';
import '../../features/audio_stories/screens/stories_list_screen.dart';
import '../../features/audio_stories/screens/audio_player_screen.dart';
import '../../features/profile/screens/profile_screen.dart';
import '../../features/practice/screens/practice_screen.dart';

/// App route paths
class AppRoutes {
  static const splash = '/';
  static const login = '/login';
  static const onboarding = '/onboarding';
  static const home = '/home';
  static const surahs = '/surahs';
  static const surahDetail = '/surah/:id';
  static const quiz = '/quiz/:surahId';
  static const stories = '/stories';
  static const player = '/player/:id';
  static const profile = '/profile';
  static const practice = '/practice';
  static const practiceQuiz = '/practice-quiz/:category';
  static const dailyChallenge = '/daily-challenge';
  static const surahReader = '/surah/:id/read';
}

/// Main app router configuration
final appRouter = GoRouter(
  initialLocation: AppRoutes.splash,
  routes: [
    // Splash Screen
    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) => const SplashScreen(),
    ),

    // Login Screen
    GoRoute(
      path: AppRoutes.login,
      builder: (context, state) => const LoginScreen(),
    ),

    // Onboarding Flow
    GoRoute(
      path: AppRoutes.onboarding,
      builder: (context, state) => const OnboardingFlowScreen(),
    ),

    // Main Shell with Bottom Navigation
    ShellRoute(
      builder: (context, state, child) => MainShellScreen(child: child),
      routes: [
        GoRoute(
          path: AppRoutes.home,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: HomeScreen(),
          ),
        ),
        GoRoute(
          path: AppRoutes.surahs,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: SurahListScreen(),
          ),
        ),
        GoRoute(
          path: AppRoutes.stories,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: StoriesListScreen(),
          ),
        ),
        GoRoute(
          path: AppRoutes.profile,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: ProfileScreen(),
          ),
        ),
        GoRoute(
          path: AppRoutes.practice,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: PracticeScreen(),
          ),
        ),
      ],
    ),

    // Surah Detail
    GoRoute(
      path: AppRoutes.surahDetail,
      builder: (context, state) {
        final id = state.pathParameters['id']!;
        return SurahDetailScreen(surahId: int.parse(id));
      },
    ),
    GoRoute(
      path: AppRoutes.quiz,
      builder: (context, state) {
        final surahId = state.pathParameters['surahId']!;
        return QuizScreen(surahId: int.parse(surahId));
      },
    ),

    // Surah Reader
    GoRoute(
      path: AppRoutes.surahReader,
      builder: (context, state) {
        final id = state.pathParameters['id']!;
        final name = (state.extra as String?) ?? 'Surah';
        return SurahReaderScreen(
          surahId: int.parse(id),
          surahName: name,
        );
      },
    ),

    // Audio Player
    GoRoute(
      path: AppRoutes.player,
      builder: (context, state) {
        final id = state.pathParameters['id']!;
        return AudioPlayerScreen(storyId: id);
      },
    ),

    // Daily Challenge
    GoRoute(
      path: AppRoutes.dailyChallenge,
      builder: (context, state) => const QuizScreen(surahId: 0),
    ),

    // Practice Quiz by category
    GoRoute(
      path: AppRoutes.practiceQuiz,
      builder: (context, state) {
        final category = state.pathParameters['category']!;
        return QuizScreen(surahId: 0, category: category);
      },
    ),
  ],
);
