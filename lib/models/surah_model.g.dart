// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahModelImpl _$$SurahModelImplFromJson(Map<String, dynamic> json) =>
    _$SurahModelImpl(
      id: (json['id'] as num).toInt(),
      surahNumber: (json['surahNumber'] as num).toInt(),
      nameArabic: json['nameArabic'] as String,
      nameEnglish: json['nameEnglish'] as String,
      nameTransliteration: json['nameTransliteration'] as String,
      totalAyahs: (json['totalAyahs'] as num).toInt(),
      juz: (json['juz'] as num).toInt(),
      revelationType: json['revelationType'] as String,
      orderInTrack: (json['orderInTrack'] as num).toInt(),
      coverImageUrl: json['coverImageUrl'] as String?,
      isLocked: json['isLocked'] as bool? ?? true,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$SurahModelImplToJson(_$SurahModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'surahNumber': instance.surahNumber,
      'nameArabic': instance.nameArabic,
      'nameEnglish': instance.nameEnglish,
      'nameTransliteration': instance.nameTransliteration,
      'totalAyahs': instance.totalAyahs,
      'juz': instance.juz,
      'revelationType': instance.revelationType,
      'orderInTrack': instance.orderInTrack,
      'coverImageUrl': instance.coverImageUrl,
      'isLocked': instance.isLocked,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

_$SurahProgressImpl _$$SurahProgressImplFromJson(Map<String, dynamic> json) =>
    _$SurahProgressImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      surahId: (json['surahId'] as num).toInt(),
      status: json['status'] as String? ?? 'locked',
      highestScore: (json['highestScore'] as num?)?.toInt() ?? 0,
      attempts: (json['attempts'] as num?)?.toInt() ?? 0,
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$SurahProgressImplToJson(_$SurahProgressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'surahId': instance.surahId,
      'status': instance.status,
      'highestScore': instance.highestScore,
      'attempts': instance.attempts,
      'completedAt': instance.completedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
    };
