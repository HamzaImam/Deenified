// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizQuestionImpl _$$QuizQuestionImplFromJson(Map<String, dynamic> json) =>
    _$QuizQuestionImpl(
      id: json['id'] as String,
      surahId: (json['surahId'] as num?)?.toInt(),
      category: json['category'] as String,
      topic: json['topic'] as String?,
      questionText: json['questionText'] as String,
      questionType: json['questionType'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => QuizOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      explanation: json['explanation'] as String?,
      difficulty: (json['difficulty'] as num?)?.toInt() ?? 1,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$QuizQuestionImplToJson(_$QuizQuestionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'surahId': instance.surahId,
      'category': instance.category,
      'topic': instance.topic,
      'questionText': instance.questionText,
      'questionType': instance.questionType,
      'options': instance.options,
      'explanation': instance.explanation,
      'difficulty': instance.difficulty,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

_$QuizOptionImpl _$$QuizOptionImplFromJson(Map<String, dynamic> json) =>
    _$QuizOptionImpl(
      text: json['text'] as String,
      isCorrect: json['isCorrect'] as bool,
    );

Map<String, dynamic> _$$QuizOptionImplToJson(_$QuizOptionImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'isCorrect': instance.isCorrect,
    };

_$QuizAttemptImpl _$$QuizAttemptImplFromJson(Map<String, dynamic> json) =>
    _$QuizAttemptImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      quizType: json['quizType'] as String,
      surahId: (json['surahId'] as num?)?.toInt(),
      topic: json['topic'] as String?,
      score: (json['score'] as num).toInt(),
      totalQuestions: (json['totalQuestions'] as num).toInt(),
      passed: json['passed'] as bool,
      timeTakenSeconds: (json['timeTakenSeconds'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$QuizAttemptImplToJson(_$QuizAttemptImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'quizType': instance.quizType,
      'surahId': instance.surahId,
      'topic': instance.topic,
      'score': instance.score,
      'totalQuestions': instance.totalQuestions,
      'passed': instance.passed,
      'timeTakenSeconds': instance.timeTakenSeconds,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

_$MissedQuestionImpl _$$MissedQuestionImplFromJson(Map<String, dynamic> json) =>
    _$MissedQuestionImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      questionId: json['questionId'] as String,
      sourceQuizType: json['sourceQuizType'] as String,
      attempts: (json['attempts'] as num?)?.toInt() ?? 1,
      mastered: json['mastered'] as bool? ?? false,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$MissedQuestionImplToJson(
        _$MissedQuestionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'questionId': instance.questionId,
      'sourceQuizType': instance.sourceQuizType,
      'attempts': instance.attempts,
      'mastered': instance.mastered,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
