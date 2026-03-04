import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah_model.freezed.dart';
part 'surah_model.g.dart';

@freezed
class SurahModel with _$SurahModel {
  const factory SurahModel({
    required int id,
    required int surahNumber,
    required String nameArabic,
    required String nameEnglish,
    required String nameTransliteration,
    required int totalAyahs,
    required int juz,
    required String revelationType,
    required int orderInTrack,
    String? coverImageUrl,
    @Default(true) bool isLocked,
    DateTime? createdAt,
  }) = _SurahModel;

  factory SurahModel.fromJson(Map<String, dynamic> json) =>
      _$SurahModelFromJson(json);
}

@freezed
class SurahProgress with _$SurahProgress {
  const factory SurahProgress({
    required String id,
    required String userId,
    required int surahId,
    @Default('locked') String status,
    @Default(0) int highestScore,
    @Default(0) int attempts,
    DateTime? completedAt,
    DateTime? createdAt,
  }) = _SurahProgress;

  factory SurahProgress.fromJson(Map<String, dynamic> json) =>
      _$SurahProgressFromJson(json);
}

/// Surah progress status
enum SurahStatus {
  locked,
  inProgress,
  completed,
}
