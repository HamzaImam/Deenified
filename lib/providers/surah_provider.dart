import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../services/supabase_service.dart';

part 'surah_provider.g.dart';

/// Provider for all surahs (ordered by id = surah number)
@riverpod
Future<List<Map<String, dynamic>>> surahs(SurahsRef ref) async {
  return await SupabaseService.instance.getSurahs();
}

/// Provider for a single surah by id (id = surah number, 1-114)
@riverpod
Future<Map<String, dynamic>?> surah(SurahRef ref, int id) async {
  return await SupabaseService.instance.getSurah(id);
}
