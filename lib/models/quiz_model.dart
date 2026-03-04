import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_model.freezed.dart';
part 'quiz_model.g.dart';

@freezed
class QuizQuestion with _$QuizQuestion {
  const factory QuizQuestion({
    required String id,
    int? surahId,
    required String category,
    String? topic,
    required String questionText,
    required String questionType,
    required List<QuizOption> options,
    String? explanation,
    @Default(1) int difficulty,
    DateTime? createdAt,
  }) = _QuizQuestion;

  factory QuizQuestion.fromJson(Map<String, dynamic> json) =>
      _$QuizQuestionFromJson(json);
}

@freezed
class QuizOption with _$QuizOption {
  const factory QuizOption({
    required String text,
    required bool isCorrect,
  }) = _QuizOption;

  factory QuizOption.fromJson(Map<String, dynamic> json) =>
      _$QuizOptionFromJson(json);
}

@freezed
class QuizAttempt with _$QuizAttempt {
  const factory QuizAttempt({
    required String id,
    required String userId,
    required String quizType,
    int? surahId,
    String? topic,
    required int score,
    required int totalQuestions,
    required bool passed,
    int? timeTakenSeconds,
    DateTime? createdAt,
  }) = _QuizAttempt;

  factory QuizAttempt.fromJson(Map<String, dynamic> json) =>
      _$QuizAttemptFromJson(json);
}

@freezed
class MissedQuestion with _$MissedQuestion {
  const factory MissedQuestion({
    required String id,
    required String userId,
    required String questionId,
    required String sourceQuizType,
    @Default(1) int attempts,
    @Default(false) bool mastered,
    DateTime? createdAt,
  }) = _MissedQuestion;

  factory MissedQuestion.fromJson(Map<String, dynamic> json) =>
      _$MissedQuestionFromJson(json);
}

/// Quiz categories
enum QuizCategory {
  surahMastery,
  dailyDeen,
  topicPractice,
}

/// Topic practice categories
enum TopicCategory {
  quranThemes,
  seerah,
  hadith,
  history,
  fiqh,
}
