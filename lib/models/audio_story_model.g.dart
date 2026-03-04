// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_story_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AudioStoryImpl _$$AudioStoryImplFromJson(Map<String, dynamic> json) =>
    _$AudioStoryImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      seriesName: json['seriesName'] as String?,
      episodeNumber: (json['episodeNumber'] as num?)?.toInt(),
      coverImageUrl: json['coverImageUrl'] as String,
      audioUrl: json['audioUrl'] as String,
      durationSeconds: (json['durationSeconds'] as num).toInt(),
      transcript: json['transcript'] as String?,
      isPremium: json['isPremium'] as bool? ?? true,
      orderIndex: (json['orderIndex'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$AudioStoryImplToJson(_$AudioStoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'seriesName': instance.seriesName,
      'episodeNumber': instance.episodeNumber,
      'coverImageUrl': instance.coverImageUrl,
      'audioUrl': instance.audioUrl,
      'durationSeconds': instance.durationSeconds,
      'transcript': instance.transcript,
      'isPremium': instance.isPremium,
      'orderIndex': instance.orderIndex,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

_$StoryProgressImpl _$$StoryProgressImplFromJson(Map<String, dynamic> json) =>
    _$StoryProgressImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      storyId: json['storyId'] as String,
      playbackPositionSeconds:
          (json['playbackPositionSeconds'] as num?)?.toInt() ?? 0,
      completed: json['completed'] as bool? ?? false,
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$StoryProgressImplToJson(_$StoryProgressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'storyId': instance.storyId,
      'playbackPositionSeconds': instance.playbackPositionSeconds,
      'completed': instance.completed,
      'completedAt': instance.completedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
    };

_$AudioSeriesImpl _$$AudioSeriesImplFromJson(Map<String, dynamic> json) =>
    _$AudioSeriesImpl(
      name: json['name'] as String,
      coverImageUrl: json['coverImageUrl'] as String,
      episodes: (json['episodes'] as List<dynamic>)
          .map((e) => AudioStory.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalDurationSeconds: (json['totalDurationSeconds'] as num).toInt(),
    );

Map<String, dynamic> _$$AudioSeriesImplToJson(_$AudioSeriesImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'coverImageUrl': instance.coverImageUrl,
      'episodes': instance.episodes,
      'totalDurationSeconds': instance.totalDurationSeconds,
    };
