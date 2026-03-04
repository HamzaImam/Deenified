import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_story_model.freezed.dart';
part 'audio_story_model.g.dart';

@freezed
class AudioStory with _$AudioStory {
  const factory AudioStory({
    required String id,
    required String title,
    String? description,
    String? seriesName,
    int? episodeNumber,
    required String coverImageUrl,
    required String audioUrl,
    required int durationSeconds,
    String? transcript,
    @Default(true) bool isPremium,
    int? orderIndex,
    DateTime? createdAt,
  }) = _AudioStory;

  factory AudioStory.fromJson(Map<String, dynamic> json) =>
      _$AudioStoryFromJson(json);
}

@freezed
class StoryProgress with _$StoryProgress {
  const factory StoryProgress({
    required String id,
    required String userId,
    required String storyId,
    @Default(0) int playbackPositionSeconds,
    @Default(false) bool completed,
    DateTime? completedAt,
    DateTime? createdAt,
  }) = _StoryProgress;

  factory StoryProgress.fromJson(Map<String, dynamic> json) =>
      _$StoryProgressFromJson(json);
}

@freezed
class AudioSeries with _$AudioSeries {
  const factory AudioSeries({
    required String name,
    required String coverImageUrl,
    required List<AudioStory> episodes,
    required int totalDurationSeconds,
  }) = _AudioSeries;

  factory AudioSeries.fromJson(Map<String, dynamic> json) =>
      _$AudioSeriesFromJson(json);
}
