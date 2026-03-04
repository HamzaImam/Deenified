import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../services/supabase_service.dart';

part 'story_provider.g.dart';

/// Provider for all audio stories
@riverpod
Future<List<Map<String, dynamic>>> audioStories(AudioStoriesRef ref) async {
  return await SupabaseService.instance.getAudioStories();
}

/// Provider for a single audio story
@riverpod
Future<Map<String, dynamic>?> audioStory(AudioStoryRef ref, String id) async {
  return await SupabaseService.instance.getAudioStory(id);
}

/// Provider for quiz questions for a surah
@riverpod
Future<List<Map<String, dynamic>>> quizQuestions(
  QuizQuestionsRef ref,
  int surahId,
) async {
  return await SupabaseService.instance.getSurahQuizQuestions(surahId);
}

/// Provider for practice questions by category (fiqh, seerah, etc.)
@riverpod
Future<List<Map<String, dynamic>>> practiceQuestions(
  PracticeQuestionsRef ref,
  String category,
) async {
  return await SupabaseService.instance.getPracticeQuestions(category);
}

/// Provider for today's daily challenge
@riverpod
Future<Map<String, dynamic>?> todayDailyChallenge(
  TodayDailyChallengeRef ref,
) async {
  return await SupabaseService.instance.getTodayDailyChallenge();
}
