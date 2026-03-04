import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String email,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String phone,

    // Onboarding responses
    @Default('') String userType,
    @Default('') String motivation,
    @Default([]) List<String> barriers,
    @Default('') String relationshipWithAllah,
    @Default('') String learningStyle,
    @Default('') String commitmentLevel,

    // Subscription
    @Default('free') String subscriptionStatus,
    DateTime? subscriptionExpiresAt,

    // Streaks & Progress
    @Default(0) int currentStreak,
    @Default(0) int longestStreak,
    DateTime? lastActivityDate,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

/// User type options for onboarding
enum UserType {
  me,
  child,
  family,
  newMuslim,
}

/// Motivation options for onboarding
enum Motivation {
  closeness,
  confidence,
  consistency,
  halalFun,
}

/// Relationship with Allah options
enum RelationshipWithAllah {
  distant,
  stagnant,
  growing,
  strong,
}

/// Learning style options
enum LearningStyle {
  visual,
  auditory,
  kinesthetic,
}

/// Commitment level options
enum CommitmentLevel {
  noExcuses,
  tryBest,
}
