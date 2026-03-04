// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_story_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AudioStory _$AudioStoryFromJson(Map<String, dynamic> json) {
  return _AudioStory.fromJson(json);
}

/// @nodoc
mixin _$AudioStory {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get seriesName => throw _privateConstructorUsedError;
  int? get episodeNumber => throw _privateConstructorUsedError;
  String get coverImageUrl => throw _privateConstructorUsedError;
  String get audioUrl => throw _privateConstructorUsedError;
  int get durationSeconds => throw _privateConstructorUsedError;
  String? get transcript => throw _privateConstructorUsedError;
  bool get isPremium => throw _privateConstructorUsedError;
  int? get orderIndex => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this AudioStory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioStory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioStoryCopyWith<AudioStory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioStoryCopyWith<$Res> {
  factory $AudioStoryCopyWith(
          AudioStory value, $Res Function(AudioStory) then) =
      _$AudioStoryCopyWithImpl<$Res, AudioStory>;
  @useResult
  $Res call(
      {String id,
      String title,
      String? description,
      String? seriesName,
      int? episodeNumber,
      String coverImageUrl,
      String audioUrl,
      int durationSeconds,
      String? transcript,
      bool isPremium,
      int? orderIndex,
      DateTime? createdAt});
}

/// @nodoc
class _$AudioStoryCopyWithImpl<$Res, $Val extends AudioStory>
    implements $AudioStoryCopyWith<$Res> {
  _$AudioStoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioStory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? seriesName = freezed,
    Object? episodeNumber = freezed,
    Object? coverImageUrl = null,
    Object? audioUrl = null,
    Object? durationSeconds = null,
    Object? transcript = freezed,
    Object? isPremium = null,
    Object? orderIndex = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      seriesName: freezed == seriesName
          ? _value.seriesName
          : seriesName // ignore: cast_nullable_to_non_nullable
              as String?,
      episodeNumber: freezed == episodeNumber
          ? _value.episodeNumber
          : episodeNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      coverImageUrl: null == coverImageUrl
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      audioUrl: null == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      durationSeconds: null == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      transcript: freezed == transcript
          ? _value.transcript
          : transcript // ignore: cast_nullable_to_non_nullable
              as String?,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      orderIndex: freezed == orderIndex
          ? _value.orderIndex
          : orderIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioStoryImplCopyWith<$Res>
    implements $AudioStoryCopyWith<$Res> {
  factory _$$AudioStoryImplCopyWith(
          _$AudioStoryImpl value, $Res Function(_$AudioStoryImpl) then) =
      __$$AudioStoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String? description,
      String? seriesName,
      int? episodeNumber,
      String coverImageUrl,
      String audioUrl,
      int durationSeconds,
      String? transcript,
      bool isPremium,
      int? orderIndex,
      DateTime? createdAt});
}

/// @nodoc
class __$$AudioStoryImplCopyWithImpl<$Res>
    extends _$AudioStoryCopyWithImpl<$Res, _$AudioStoryImpl>
    implements _$$AudioStoryImplCopyWith<$Res> {
  __$$AudioStoryImplCopyWithImpl(
      _$AudioStoryImpl _value, $Res Function(_$AudioStoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioStory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? seriesName = freezed,
    Object? episodeNumber = freezed,
    Object? coverImageUrl = null,
    Object? audioUrl = null,
    Object? durationSeconds = null,
    Object? transcript = freezed,
    Object? isPremium = null,
    Object? orderIndex = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$AudioStoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      seriesName: freezed == seriesName
          ? _value.seriesName
          : seriesName // ignore: cast_nullable_to_non_nullable
              as String?,
      episodeNumber: freezed == episodeNumber
          ? _value.episodeNumber
          : episodeNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      coverImageUrl: null == coverImageUrl
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      audioUrl: null == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      durationSeconds: null == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      transcript: freezed == transcript
          ? _value.transcript
          : transcript // ignore: cast_nullable_to_non_nullable
              as String?,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      orderIndex: freezed == orderIndex
          ? _value.orderIndex
          : orderIndex // ignore: cast_nullable_to_non_nullable
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
class _$AudioStoryImpl implements _AudioStory {
  const _$AudioStoryImpl(
      {required this.id,
      required this.title,
      this.description,
      this.seriesName,
      this.episodeNumber,
      required this.coverImageUrl,
      required this.audioUrl,
      required this.durationSeconds,
      this.transcript,
      this.isPremium = true,
      this.orderIndex,
      this.createdAt});

  factory _$AudioStoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioStoryImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String? seriesName;
  @override
  final int? episodeNumber;
  @override
  final String coverImageUrl;
  @override
  final String audioUrl;
  @override
  final int durationSeconds;
  @override
  final String? transcript;
  @override
  @JsonKey()
  final bool isPremium;
  @override
  final int? orderIndex;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'AudioStory(id: $id, title: $title, description: $description, seriesName: $seriesName, episodeNumber: $episodeNumber, coverImageUrl: $coverImageUrl, audioUrl: $audioUrl, durationSeconds: $durationSeconds, transcript: $transcript, isPremium: $isPremium, orderIndex: $orderIndex, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioStoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.seriesName, seriesName) ||
                other.seriesName == seriesName) &&
            (identical(other.episodeNumber, episodeNumber) ||
                other.episodeNumber == episodeNumber) &&
            (identical(other.coverImageUrl, coverImageUrl) ||
                other.coverImageUrl == coverImageUrl) &&
            (identical(other.audioUrl, audioUrl) ||
                other.audioUrl == audioUrl) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            (identical(other.transcript, transcript) ||
                other.transcript == transcript) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium) &&
            (identical(other.orderIndex, orderIndex) ||
                other.orderIndex == orderIndex) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      seriesName,
      episodeNumber,
      coverImageUrl,
      audioUrl,
      durationSeconds,
      transcript,
      isPremium,
      orderIndex,
      createdAt);

  /// Create a copy of AudioStory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioStoryImplCopyWith<_$AudioStoryImpl> get copyWith =>
      __$$AudioStoryImplCopyWithImpl<_$AudioStoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioStoryImplToJson(
      this,
    );
  }
}

abstract class _AudioStory implements AudioStory {
  const factory _AudioStory(
      {required final String id,
      required final String title,
      final String? description,
      final String? seriesName,
      final int? episodeNumber,
      required final String coverImageUrl,
      required final String audioUrl,
      required final int durationSeconds,
      final String? transcript,
      final bool isPremium,
      final int? orderIndex,
      final DateTime? createdAt}) = _$AudioStoryImpl;

  factory _AudioStory.fromJson(Map<String, dynamic> json) =
      _$AudioStoryImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  String? get seriesName;
  @override
  int? get episodeNumber;
  @override
  String get coverImageUrl;
  @override
  String get audioUrl;
  @override
  int get durationSeconds;
  @override
  String? get transcript;
  @override
  bool get isPremium;
  @override
  int? get orderIndex;
  @override
  DateTime? get createdAt;

  /// Create a copy of AudioStory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioStoryImplCopyWith<_$AudioStoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoryProgress _$StoryProgressFromJson(Map<String, dynamic> json) {
  return _StoryProgress.fromJson(json);
}

/// @nodoc
mixin _$StoryProgress {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get storyId => throw _privateConstructorUsedError;
  int get playbackPositionSeconds => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this StoryProgress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoryProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoryProgressCopyWith<StoryProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryProgressCopyWith<$Res> {
  factory $StoryProgressCopyWith(
          StoryProgress value, $Res Function(StoryProgress) then) =
      _$StoryProgressCopyWithImpl<$Res, StoryProgress>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String storyId,
      int playbackPositionSeconds,
      bool completed,
      DateTime? completedAt,
      DateTime? createdAt});
}

/// @nodoc
class _$StoryProgressCopyWithImpl<$Res, $Val extends StoryProgress>
    implements $StoryProgressCopyWith<$Res> {
  _$StoryProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoryProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? storyId = null,
    Object? playbackPositionSeconds = null,
    Object? completed = null,
    Object? completedAt = freezed,
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
      storyId: null == storyId
          ? _value.storyId
          : storyId // ignore: cast_nullable_to_non_nullable
              as String,
      playbackPositionSeconds: null == playbackPositionSeconds
          ? _value.playbackPositionSeconds
          : playbackPositionSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoryProgressImplCopyWith<$Res>
    implements $StoryProgressCopyWith<$Res> {
  factory _$$StoryProgressImplCopyWith(
          _$StoryProgressImpl value, $Res Function(_$StoryProgressImpl) then) =
      __$$StoryProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String storyId,
      int playbackPositionSeconds,
      bool completed,
      DateTime? completedAt,
      DateTime? createdAt});
}

/// @nodoc
class __$$StoryProgressImplCopyWithImpl<$Res>
    extends _$StoryProgressCopyWithImpl<$Res, _$StoryProgressImpl>
    implements _$$StoryProgressImplCopyWith<$Res> {
  __$$StoryProgressImplCopyWithImpl(
      _$StoryProgressImpl _value, $Res Function(_$StoryProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoryProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? storyId = null,
    Object? playbackPositionSeconds = null,
    Object? completed = null,
    Object? completedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$StoryProgressImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      storyId: null == storyId
          ? _value.storyId
          : storyId // ignore: cast_nullable_to_non_nullable
              as String,
      playbackPositionSeconds: null == playbackPositionSeconds
          ? _value.playbackPositionSeconds
          : playbackPositionSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoryProgressImpl implements _StoryProgress {
  const _$StoryProgressImpl(
      {required this.id,
      required this.userId,
      required this.storyId,
      this.playbackPositionSeconds = 0,
      this.completed = false,
      this.completedAt,
      this.createdAt});

  factory _$StoryProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoryProgressImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String storyId;
  @override
  @JsonKey()
  final int playbackPositionSeconds;
  @override
  @JsonKey()
  final bool completed;
  @override
  final DateTime? completedAt;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'StoryProgress(id: $id, userId: $userId, storyId: $storyId, playbackPositionSeconds: $playbackPositionSeconds, completed: $completed, completedAt: $completedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryProgressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.storyId, storyId) || other.storyId == storyId) &&
            (identical(
                    other.playbackPositionSeconds, playbackPositionSeconds) ||
                other.playbackPositionSeconds == playbackPositionSeconds) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, storyId,
      playbackPositionSeconds, completed, completedAt, createdAt);

  /// Create a copy of StoryProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoryProgressImplCopyWith<_$StoryProgressImpl> get copyWith =>
      __$$StoryProgressImplCopyWithImpl<_$StoryProgressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoryProgressImplToJson(
      this,
    );
  }
}

abstract class _StoryProgress implements StoryProgress {
  const factory _StoryProgress(
      {required final String id,
      required final String userId,
      required final String storyId,
      final int playbackPositionSeconds,
      final bool completed,
      final DateTime? completedAt,
      final DateTime? createdAt}) = _$StoryProgressImpl;

  factory _StoryProgress.fromJson(Map<String, dynamic> json) =
      _$StoryProgressImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get storyId;
  @override
  int get playbackPositionSeconds;
  @override
  bool get completed;
  @override
  DateTime? get completedAt;
  @override
  DateTime? get createdAt;

  /// Create a copy of StoryProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoryProgressImplCopyWith<_$StoryProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AudioSeries _$AudioSeriesFromJson(Map<String, dynamic> json) {
  return _AudioSeries.fromJson(json);
}

/// @nodoc
mixin _$AudioSeries {
  String get name => throw _privateConstructorUsedError;
  String get coverImageUrl => throw _privateConstructorUsedError;
  List<AudioStory> get episodes => throw _privateConstructorUsedError;
  int get totalDurationSeconds => throw _privateConstructorUsedError;

  /// Serializes this AudioSeries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioSeries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioSeriesCopyWith<AudioSeries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioSeriesCopyWith<$Res> {
  factory $AudioSeriesCopyWith(
          AudioSeries value, $Res Function(AudioSeries) then) =
      _$AudioSeriesCopyWithImpl<$Res, AudioSeries>;
  @useResult
  $Res call(
      {String name,
      String coverImageUrl,
      List<AudioStory> episodes,
      int totalDurationSeconds});
}

/// @nodoc
class _$AudioSeriesCopyWithImpl<$Res, $Val extends AudioSeries>
    implements $AudioSeriesCopyWith<$Res> {
  _$AudioSeriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioSeries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? coverImageUrl = null,
    Object? episodes = null,
    Object? totalDurationSeconds = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coverImageUrl: null == coverImageUrl
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      episodes: null == episodes
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<AudioStory>,
      totalDurationSeconds: null == totalDurationSeconds
          ? _value.totalDurationSeconds
          : totalDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioSeriesImplCopyWith<$Res>
    implements $AudioSeriesCopyWith<$Res> {
  factory _$$AudioSeriesImplCopyWith(
          _$AudioSeriesImpl value, $Res Function(_$AudioSeriesImpl) then) =
      __$$AudioSeriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String coverImageUrl,
      List<AudioStory> episodes,
      int totalDurationSeconds});
}

/// @nodoc
class __$$AudioSeriesImplCopyWithImpl<$Res>
    extends _$AudioSeriesCopyWithImpl<$Res, _$AudioSeriesImpl>
    implements _$$AudioSeriesImplCopyWith<$Res> {
  __$$AudioSeriesImplCopyWithImpl(
      _$AudioSeriesImpl _value, $Res Function(_$AudioSeriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioSeries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? coverImageUrl = null,
    Object? episodes = null,
    Object? totalDurationSeconds = null,
  }) {
    return _then(_$AudioSeriesImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coverImageUrl: null == coverImageUrl
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      episodes: null == episodes
          ? _value._episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<AudioStory>,
      totalDurationSeconds: null == totalDurationSeconds
          ? _value.totalDurationSeconds
          : totalDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioSeriesImpl implements _AudioSeries {
  const _$AudioSeriesImpl(
      {required this.name,
      required this.coverImageUrl,
      required final List<AudioStory> episodes,
      required this.totalDurationSeconds})
      : _episodes = episodes;

  factory _$AudioSeriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioSeriesImplFromJson(json);

  @override
  final String name;
  @override
  final String coverImageUrl;
  final List<AudioStory> _episodes;
  @override
  List<AudioStory> get episodes {
    if (_episodes is EqualUnmodifiableListView) return _episodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episodes);
  }

  @override
  final int totalDurationSeconds;

  @override
  String toString() {
    return 'AudioSeries(name: $name, coverImageUrl: $coverImageUrl, episodes: $episodes, totalDurationSeconds: $totalDurationSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioSeriesImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.coverImageUrl, coverImageUrl) ||
                other.coverImageUrl == coverImageUrl) &&
            const DeepCollectionEquality().equals(other._episodes, _episodes) &&
            (identical(other.totalDurationSeconds, totalDurationSeconds) ||
                other.totalDurationSeconds == totalDurationSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, coverImageUrl,
      const DeepCollectionEquality().hash(_episodes), totalDurationSeconds);

  /// Create a copy of AudioSeries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioSeriesImplCopyWith<_$AudioSeriesImpl> get copyWith =>
      __$$AudioSeriesImplCopyWithImpl<_$AudioSeriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioSeriesImplToJson(
      this,
    );
  }
}

abstract class _AudioSeries implements AudioSeries {
  const factory _AudioSeries(
      {required final String name,
      required final String coverImageUrl,
      required final List<AudioStory> episodes,
      required final int totalDurationSeconds}) = _$AudioSeriesImpl;

  factory _AudioSeries.fromJson(Map<String, dynamic> json) =
      _$AudioSeriesImpl.fromJson;

  @override
  String get name;
  @override
  String get coverImageUrl;
  @override
  List<AudioStory> get episodes;
  @override
  int get totalDurationSeconds;

  /// Create a copy of AudioSeries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioSeriesImplCopyWith<_$AudioSeriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
