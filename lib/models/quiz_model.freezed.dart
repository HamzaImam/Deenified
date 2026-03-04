// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizQuestion _$QuizQuestionFromJson(Map<String, dynamic> json) {
  return _QuizQuestion.fromJson(json);
}

/// @nodoc
mixin _$QuizQuestion {
  String get id => throw _privateConstructorUsedError;
  int? get surahId => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String? get topic => throw _privateConstructorUsedError;
  String get questionText => throw _privateConstructorUsedError;
  String get questionType => throw _privateConstructorUsedError;
  List<QuizOption> get options => throw _privateConstructorUsedError;
  String? get explanation => throw _privateConstructorUsedError;
  int get difficulty => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this QuizQuestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizQuestionCopyWith<QuizQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizQuestionCopyWith<$Res> {
  factory $QuizQuestionCopyWith(
          QuizQuestion value, $Res Function(QuizQuestion) then) =
      _$QuizQuestionCopyWithImpl<$Res, QuizQuestion>;
  @useResult
  $Res call(
      {String id,
      int? surahId,
      String category,
      String? topic,
      String questionText,
      String questionType,
      List<QuizOption> options,
      String? explanation,
      int difficulty,
      DateTime? createdAt});
}

/// @nodoc
class _$QuizQuestionCopyWithImpl<$Res, $Val extends QuizQuestion>
    implements $QuizQuestionCopyWith<$Res> {
  _$QuizQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? surahId = freezed,
    Object? category = null,
    Object? topic = freezed,
    Object? questionText = null,
    Object? questionType = null,
    Object? options = null,
    Object? explanation = freezed,
    Object? difficulty = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      surahId: freezed == surahId
          ? _value.surahId
          : surahId // ignore: cast_nullable_to_non_nullable
              as int?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      topic: freezed == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      questionType: null == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<QuizOption>,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizQuestionImplCopyWith<$Res>
    implements $QuizQuestionCopyWith<$Res> {
  factory _$$QuizQuestionImplCopyWith(
          _$QuizQuestionImpl value, $Res Function(_$QuizQuestionImpl) then) =
      __$$QuizQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int? surahId,
      String category,
      String? topic,
      String questionText,
      String questionType,
      List<QuizOption> options,
      String? explanation,
      int difficulty,
      DateTime? createdAt});
}

/// @nodoc
class __$$QuizQuestionImplCopyWithImpl<$Res>
    extends _$QuizQuestionCopyWithImpl<$Res, _$QuizQuestionImpl>
    implements _$$QuizQuestionImplCopyWith<$Res> {
  __$$QuizQuestionImplCopyWithImpl(
      _$QuizQuestionImpl _value, $Res Function(_$QuizQuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? surahId = freezed,
    Object? category = null,
    Object? topic = freezed,
    Object? questionText = null,
    Object? questionType = null,
    Object? options = null,
    Object? explanation = freezed,
    Object? difficulty = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$QuizQuestionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      surahId: freezed == surahId
          ? _value.surahId
          : surahId // ignore: cast_nullable_to_non_nullable
              as int?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      topic: freezed == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      questionType: null == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<QuizOption>,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizQuestionImpl implements _QuizQuestion {
  const _$QuizQuestionImpl(
      {required this.id,
      this.surahId,
      required this.category,
      this.topic,
      required this.questionText,
      required this.questionType,
      required final List<QuizOption> options,
      this.explanation,
      this.difficulty = 1,
      this.createdAt})
      : _options = options;

  factory _$QuizQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizQuestionImplFromJson(json);

  @override
  final String id;
  @override
  final int? surahId;
  @override
  final String category;
  @override
  final String? topic;
  @override
  final String questionText;
  @override
  final String questionType;
  final List<QuizOption> _options;
  @override
  List<QuizOption> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  final String? explanation;
  @override
  @JsonKey()
  final int difficulty;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'QuizQuestion(id: $id, surahId: $surahId, category: $category, topic: $topic, questionText: $questionText, questionType: $questionType, options: $options, explanation: $explanation, difficulty: $difficulty, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizQuestionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.surahId, surahId) || other.surahId == surahId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.questionText, questionText) ||
                other.questionText == questionText) &&
            (identical(other.questionType, questionType) ||
                other.questionType == questionType) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      surahId,
      category,
      topic,
      questionText,
      questionType,
      const DeepCollectionEquality().hash(_options),
      explanation,
      difficulty,
      createdAt);

  /// Create a copy of QuizQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizQuestionImplCopyWith<_$QuizQuestionImpl> get copyWith =>
      __$$QuizQuestionImplCopyWithImpl<_$QuizQuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizQuestionImplToJson(
      this,
    );
  }
}

abstract class _QuizQuestion implements QuizQuestion {
  const factory _QuizQuestion(
      {required final String id,
      final int? surahId,
      required final String category,
      final String? topic,
      required final String questionText,
      required final String questionType,
      required final List<QuizOption> options,
      final String? explanation,
      final int difficulty,
      final DateTime? createdAt}) = _$QuizQuestionImpl;

  factory _QuizQuestion.fromJson(Map<String, dynamic> json) =
      _$QuizQuestionImpl.fromJson;

  @override
  String get id;
  @override
  int? get surahId;
  @override
  String get category;
  @override
  String? get topic;
  @override
  String get questionText;
  @override
  String get questionType;
  @override
  List<QuizOption> get options;
  @override
  String? get explanation;
  @override
  int get difficulty;
  @override
  DateTime? get createdAt;

  /// Create a copy of QuizQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizQuestionImplCopyWith<_$QuizQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuizOption _$QuizOptionFromJson(Map<String, dynamic> json) {
  return _QuizOption.fromJson(json);
}

/// @nodoc
mixin _$QuizOption {
  String get text => throw _privateConstructorUsedError;
  bool get isCorrect => throw _privateConstructorUsedError;

  /// Serializes this QuizOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizOptionCopyWith<QuizOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizOptionCopyWith<$Res> {
  factory $QuizOptionCopyWith(
          QuizOption value, $Res Function(QuizOption) then) =
      _$QuizOptionCopyWithImpl<$Res, QuizOption>;
  @useResult
  $Res call({String text, bool isCorrect});
}

/// @nodoc
class _$QuizOptionCopyWithImpl<$Res, $Val extends QuizOption>
    implements $QuizOptionCopyWith<$Res> {
  _$QuizOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? isCorrect = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizOptionImplCopyWith<$Res>
    implements $QuizOptionCopyWith<$Res> {
  factory _$$QuizOptionImplCopyWith(
          _$QuizOptionImpl value, $Res Function(_$QuizOptionImpl) then) =
      __$$QuizOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, bool isCorrect});
}

/// @nodoc
class __$$QuizOptionImplCopyWithImpl<$Res>
    extends _$QuizOptionCopyWithImpl<$Res, _$QuizOptionImpl>
    implements _$$QuizOptionImplCopyWith<$Res> {
  __$$QuizOptionImplCopyWithImpl(
      _$QuizOptionImpl _value, $Res Function(_$QuizOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? isCorrect = null,
  }) {
    return _then(_$QuizOptionImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizOptionImpl implements _QuizOption {
  const _$QuizOptionImpl({required this.text, required this.isCorrect});

  factory _$QuizOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizOptionImplFromJson(json);

  @override
  final String text;
  @override
  final bool isCorrect;

  @override
  String toString() {
    return 'QuizOption(text: $text, isCorrect: $isCorrect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizOptionImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, isCorrect);

  /// Create a copy of QuizOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizOptionImplCopyWith<_$QuizOptionImpl> get copyWith =>
      __$$QuizOptionImplCopyWithImpl<_$QuizOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizOptionImplToJson(
      this,
    );
  }
}

abstract class _QuizOption implements QuizOption {
  const factory _QuizOption(
      {required final String text,
      required final bool isCorrect}) = _$QuizOptionImpl;

  factory _QuizOption.fromJson(Map<String, dynamic> json) =
      _$QuizOptionImpl.fromJson;

  @override
  String get text;
  @override
  bool get isCorrect;

  /// Create a copy of QuizOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizOptionImplCopyWith<_$QuizOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuizAttempt _$QuizAttemptFromJson(Map<String, dynamic> json) {
  return _QuizAttempt.fromJson(json);
}

/// @nodoc
mixin _$QuizAttempt {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get quizType => throw _privateConstructorUsedError;
  int? get surahId => throw _privateConstructorUsedError;
  String? get topic => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  int get totalQuestions => throw _privateConstructorUsedError;
  bool get passed => throw _privateConstructorUsedError;
  int? get timeTakenSeconds => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this QuizAttempt to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizAttempt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizAttemptCopyWith<QuizAttempt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizAttemptCopyWith<$Res> {
  factory $QuizAttemptCopyWith(
          QuizAttempt value, $Res Function(QuizAttempt) then) =
      _$QuizAttemptCopyWithImpl<$Res, QuizAttempt>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String quizType,
      int? surahId,
      String? topic,
      int score,
      int totalQuestions,
      bool passed,
      int? timeTakenSeconds,
      DateTime? createdAt});
}

/// @nodoc
class _$QuizAttemptCopyWithImpl<$Res, $Val extends QuizAttempt>
    implements $QuizAttemptCopyWith<$Res> {
  _$QuizAttemptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizAttempt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? quizType = null,
    Object? surahId = freezed,
    Object? topic = freezed,
    Object? score = null,
    Object? totalQuestions = null,
    Object? passed = null,
    Object? timeTakenSeconds = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      quizType: null == quizType
          ? _value.quizType
          : quizType // ignore: cast_nullable_to_non_nullable
              as String,
      surahId: freezed == surahId
          ? _value.surahId
          : surahId // ignore: cast_nullable_to_non_nullable
              as int?,
      topic: freezed == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      passed: null == passed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as bool,
      timeTakenSeconds: freezed == timeTakenSeconds
          ? _value.timeTakenSeconds
          : timeTakenSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizAttemptImplCopyWith<$Res>
    implements $QuizAttemptCopyWith<$Res> {
  factory _$$QuizAttemptImplCopyWith(
          _$QuizAttemptImpl value, $Res Function(_$QuizAttemptImpl) then) =
      __$$QuizAttemptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String quizType,
      int? surahId,
      String? topic,
      int score,
      int totalQuestions,
      bool passed,
      int? timeTakenSeconds,
      DateTime? createdAt});
}

/// @nodoc
class __$$QuizAttemptImplCopyWithImpl<$Res>
    extends _$QuizAttemptCopyWithImpl<$Res, _$QuizAttemptImpl>
    implements _$$QuizAttemptImplCopyWith<$Res> {
  __$$QuizAttemptImplCopyWithImpl(
      _$QuizAttemptImpl _value, $Res Function(_$QuizAttemptImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizAttempt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? quizType = null,
    Object? surahId = freezed,
    Object? topic = freezed,
    Object? score = null,
    Object? totalQuestions = null,
    Object? passed = null,
    Object? timeTakenSeconds = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$QuizAttemptImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      quizType: null == quizType
          ? _value.quizType
          : quizType // ignore: cast_nullable_to_non_nullable
              as String,
      surahId: freezed == surahId
          ? _value.surahId
          : surahId // ignore: cast_nullable_to_non_nullable
              as int?,
      topic: freezed == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      passed: null == passed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as bool,
      timeTakenSeconds: freezed == timeTakenSeconds
          ? _value.timeTakenSeconds
          : timeTakenSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizAttemptImpl implements _QuizAttempt {
  const _$QuizAttemptImpl(
      {required this.id,
      required this.userId,
      required this.quizType,
      this.surahId,
      this.topic,
      required this.score,
      required this.totalQuestions,
      required this.passed,
      this.timeTakenSeconds,
      this.createdAt});

  factory _$QuizAttemptImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizAttemptImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String quizType;
  @override
  final int? surahId;
  @override
  final String? topic;
  @override
  final int score;
  @override
  final int totalQuestions;
  @override
  final bool passed;
  @override
  final int? timeTakenSeconds;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'QuizAttempt(id: $id, userId: $userId, quizType: $quizType, surahId: $surahId, topic: $topic, score: $score, totalQuestions: $totalQuestions, passed: $passed, timeTakenSeconds: $timeTakenSeconds, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizAttemptImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.quizType, quizType) ||
                other.quizType == quizType) &&
            (identical(other.surahId, surahId) || other.surahId == surahId) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions) &&
            (identical(other.passed, passed) || other.passed == passed) &&
            (identical(other.timeTakenSeconds, timeTakenSeconds) ||
                other.timeTakenSeconds == timeTakenSeconds) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, quizType, surahId,
      topic, score, totalQuestions, passed, timeTakenSeconds, createdAt);

  /// Create a copy of QuizAttempt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizAttemptImplCopyWith<_$QuizAttemptImpl> get copyWith =>
      __$$QuizAttemptImplCopyWithImpl<_$QuizAttemptImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizAttemptImplToJson(
      this,
    );
  }
}

abstract class _QuizAttempt implements QuizAttempt {
  const factory _QuizAttempt(
      {required final String id,
      required final String userId,
      required final String quizType,
      final int? surahId,
      final String? topic,
      required final int score,
      required final int totalQuestions,
      required final bool passed,
      final int? timeTakenSeconds,
      final DateTime? createdAt}) = _$QuizAttemptImpl;

  factory _QuizAttempt.fromJson(Map<String, dynamic> json) =
      _$QuizAttemptImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get quizType;
  @override
  int? get surahId;
  @override
  String? get topic;
  @override
  int get score;
  @override
  int get totalQuestions;
  @override
  bool get passed;
  @override
  int? get timeTakenSeconds;
  @override
  DateTime? get createdAt;

  /// Create a copy of QuizAttempt
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizAttemptImplCopyWith<_$QuizAttemptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MissedQuestion _$MissedQuestionFromJson(Map<String, dynamic> json) {
  return _MissedQuestion.fromJson(json);
}

/// @nodoc
mixin _$MissedQuestion {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get questionId => throw _privateConstructorUsedError;
  String get sourceQuizType => throw _privateConstructorUsedError;
  int get attempts => throw _privateConstructorUsedError;
  bool get mastered => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this MissedQuestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MissedQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MissedQuestionCopyWith<MissedQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissedQuestionCopyWith<$Res> {
  factory $MissedQuestionCopyWith(
          MissedQuestion value, $Res Function(MissedQuestion) then) =
      _$MissedQuestionCopyWithImpl<$Res, MissedQuestion>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String questionId,
      String sourceQuizType,
      int attempts,
      bool mastered,
      DateTime? createdAt});
}

/// @nodoc
class _$MissedQuestionCopyWithImpl<$Res, $Val extends MissedQuestion>
    implements $MissedQuestionCopyWith<$Res> {
  _$MissedQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MissedQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? questionId = null,
    Object? sourceQuizType = null,
    Object? attempts = null,
    Object? mastered = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      sourceQuizType: null == sourceQuizType
          ? _value.sourceQuizType
          : sourceQuizType // ignore: cast_nullable_to_non_nullable
              as String,
      attempts: null == attempts
          ? _value.attempts
          : attempts // ignore: cast_nullable_to_non_nullable
              as int,
      mastered: null == mastered
          ? _value.mastered
          : mastered // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MissedQuestionImplCopyWith<$Res>
    implements $MissedQuestionCopyWith<$Res> {
  factory _$$MissedQuestionImplCopyWith(_$MissedQuestionImpl value,
          $Res Function(_$MissedQuestionImpl) then) =
      __$$MissedQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String questionId,
      String sourceQuizType,
      int attempts,
      bool mastered,
      DateTime? createdAt});
}

/// @nodoc
class __$$MissedQuestionImplCopyWithImpl<$Res>
    extends _$MissedQuestionCopyWithImpl<$Res, _$MissedQuestionImpl>
    implements _$$MissedQuestionImplCopyWith<$Res> {
  __$$MissedQuestionImplCopyWithImpl(
      _$MissedQuestionImpl _value, $Res Function(_$MissedQuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MissedQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? questionId = null,
    Object? sourceQuizType = null,
    Object? attempts = null,
    Object? mastered = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$MissedQuestionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      sourceQuizType: null == sourceQuizType
          ? _value.sourceQuizType
          : sourceQuizType // ignore: cast_nullable_to_non_nullable
              as String,
      attempts: null == attempts
          ? _value.attempts
          : attempts // ignore: cast_nullable_to_non_nullable
              as int,
      mastered: null == mastered
          ? _value.mastered
          : mastered // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MissedQuestionImpl implements _MissedQuestion {
  const _$MissedQuestionImpl(
      {required this.id,
      required this.userId,
      required this.questionId,
      required this.sourceQuizType,
      this.attempts = 1,
      this.mastered = false,
      this.createdAt});

  factory _$MissedQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MissedQuestionImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String questionId;
  @override
  final String sourceQuizType;
  @override
  @JsonKey()
  final int attempts;
  @override
  @JsonKey()
  final bool mastered;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'MissedQuestion(id: $id, userId: $userId, questionId: $questionId, sourceQuizType: $sourceQuizType, attempts: $attempts, mastered: $mastered, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissedQuestionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.sourceQuizType, sourceQuizType) ||
                other.sourceQuizType == sourceQuizType) &&
            (identical(other.attempts, attempts) ||
                other.attempts == attempts) &&
            (identical(other.mastered, mastered) ||
                other.mastered == mastered) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, questionId,
      sourceQuizType, attempts, mastered, createdAt);

  /// Create a copy of MissedQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MissedQuestionImplCopyWith<_$MissedQuestionImpl> get copyWith =>
      __$$MissedQuestionImplCopyWithImpl<_$MissedQuestionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MissedQuestionImplToJson(
      this,
    );
  }
}

abstract class _MissedQuestion implements MissedQuestion {
  const factory _MissedQuestion(
      {required final String id,
      required final String userId,
      required final String questionId,
      required final String sourceQuizType,
      final int attempts,
      final bool mastered,
      final DateTime? createdAt}) = _$MissedQuestionImpl;

  factory _MissedQuestion.fromJson(Map<String, dynamic> json) =
      _$MissedQuestionImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get questionId;
  @override
  String get sourceQuizType;
  @override
  int get attempts;
  @override
  bool get mastered;
  @override
  DateTime? get createdAt;

  /// Create a copy of MissedQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MissedQuestionImplCopyWith<_$MissedQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
