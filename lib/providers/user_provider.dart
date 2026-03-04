import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../services/supabase_service.dart';

part 'user_provider.g.dart';

/// Provider for user profile
@riverpod
class UserProfile extends _$UserProfile {
  @override
  Future<Map<String, dynamic>?> build() async {
    return await SupabaseService.instance.getOrCreateUserProfile();
  }

  /// Update user profile
  Future<void> updateProfile(Map<String, dynamic> data) async {
    await SupabaseService.instance.updateUserProfile(data);
    ref.invalidateSelf();
  }

  /// Update streak
  Future<void> updateStreak() async {
    await SupabaseService.instance.updateStreak();
    ref.invalidateSelf();
  }
}

/// Provider for current streak
@riverpod
int currentStreak(CurrentStreakRef ref) {
  final profile = ref.watch(userProfileProvider).valueOrNull;
  return profile?['current_streak'] ?? 0;
}

/// Provider for longest streak
@riverpod
int longestStreak(LongestStreakRef ref) {
  final profile = ref.watch(userProfileProvider).valueOrNull;
  return profile?['longest_streak'] ?? 0;
}
