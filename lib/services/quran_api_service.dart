import 'dart:convert';
import 'package:http/http.dart' as http;

/// Model for a single Quran verse from the API
class QuranVerse {
  final int verseNumber;
  final String verseKey;
  final String textUthmani;
  final String? translationText;
  final List<QuranWord> words;

  QuranVerse({
    required this.verseNumber,
    required this.verseKey,
    required this.textUthmani,
    this.translationText,
    required this.words,
  });

  factory QuranVerse.fromJson(Map<String, dynamic> json) {
    final wordsList = (json['words'] as List? ?? [])
        .where((w) => w['char_type_name'] == 'word')
        .map((w) => QuranWord.fromJson(w))
        .toList();

    // Extract translation text if available
    String? translation;
    final translations = json['translations'] as List?;
    if (translations != null && translations.isNotEmpty) {
      translation = translations[0]['text'] as String?;
    }

    return QuranVerse(
      verseNumber: json['verse_number'] ?? 0,
      verseKey: json['verse_key'] ?? '',
      textUthmani: json['text_uthmani'] ?? '',
      translationText: translation,
      words: wordsList,
    );
  }
}

/// Model for a single word within a verse
class QuranWord {
  final int position;
  final String? translationText;
  final String? transliterationText;

  QuranWord({
    required this.position,
    this.translationText,
    this.transliterationText,
  });

  factory QuranWord.fromJson(Map<String, dynamic> json) {
    return QuranWord(
      position: json['position'] ?? 0,
      translationText: json['translation']?['text'],
      transliterationText: json['transliteration']?['text'],
    );
  }
}

/// Service for fetching Quran data from api.quran.com
class QuranApiService {
  QuranApiService._();
  static final instance = QuranApiService._();

  static const _baseUrl = 'https://api.quran.com/api/v4';

  /// Sahih International translation
  static const _translationId = 131;

  /// Fetch all verses for a given chapter/surah
  /// Returns parsed [QuranVerse] list
  Future<List<QuranVerse>> getVersesByChapter(int surahId) async {
    final url = Uri.parse(
      '$_baseUrl/verses/by_chapter/$surahId'
      '?language=en'
      '&words=true'
      '&translations=$_translationId'
      '&fields=text_uthmani'
      '&per_page=286', // Max verses in a surah (Al-Baqarah = 286)
    );

    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception('Failed to load Surah $surahId: ${response.statusCode}');
    }

    final data = jsonDecode(response.body) as Map<String, dynamic>;
    final verses =
        (data['verses'] as List).map((v) => QuranVerse.fromJson(v)).toList();

    return verses;
  }
}
