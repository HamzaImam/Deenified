// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$audioStoriesHash() => r'962226fe149c2b3c45165aed7f0fd498011bb548';

/// Provider for all audio stories
///
/// Copied from [audioStories].
@ProviderFor(audioStories)
final audioStoriesProvider =
    AutoDisposeFutureProvider<List<Map<String, dynamic>>>.internal(
  audioStories,
  name: r'audioStoriesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$audioStoriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AudioStoriesRef
    = AutoDisposeFutureProviderRef<List<Map<String, dynamic>>>;
String _$audioStoryHash() => r'9dd1d7aed17e130ac40a6f9b9cab5befca53c52f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// Provider for a single audio story
///
/// Copied from [audioStory].
@ProviderFor(audioStory)
const audioStoryProvider = AudioStoryFamily();

/// Provider for a single audio story
///
/// Copied from [audioStory].
class AudioStoryFamily extends Family<AsyncValue<Map<String, dynamic>?>> {
  /// Provider for a single audio story
  ///
  /// Copied from [audioStory].
  const AudioStoryFamily();

  /// Provider for a single audio story
  ///
  /// Copied from [audioStory].
  AudioStoryProvider call(
    String id,
  ) {
    return AudioStoryProvider(
      id,
    );
  }

  @override
  AudioStoryProvider getProviderOverride(
    covariant AudioStoryProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'audioStoryProvider';
}

/// Provider for a single audio story
///
/// Copied from [audioStory].
class AudioStoryProvider
    extends AutoDisposeFutureProvider<Map<String, dynamic>?> {
  /// Provider for a single audio story
  ///
  /// Copied from [audioStory].
  AudioStoryProvider(
    String id,
  ) : this._internal(
          (ref) => audioStory(
            ref as AudioStoryRef,
            id,
          ),
          from: audioStoryProvider,
          name: r'audioStoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$audioStoryHash,
          dependencies: AudioStoryFamily._dependencies,
          allTransitiveDependencies:
              AudioStoryFamily._allTransitiveDependencies,
          id: id,
        );

  AudioStoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<Map<String, dynamic>?> Function(AudioStoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AudioStoryProvider._internal(
        (ref) => create(ref as AudioStoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Map<String, dynamic>?> createElement() {
    return _AudioStoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AudioStoryProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AudioStoryRef on AutoDisposeFutureProviderRef<Map<String, dynamic>?> {
  /// The parameter `id` of this provider.
  String get id;
}

class _AudioStoryProviderElement
    extends AutoDisposeFutureProviderElement<Map<String, dynamic>?>
    with AudioStoryRef {
  _AudioStoryProviderElement(super.provider);

  @override
  String get id => (origin as AudioStoryProvider).id;
}

String _$quizQuestionsHash() => r'b1a2b86cb7f554d3ed8a6a0cec70dab2e9302557';

/// Provider for quiz questions for a surah
///
/// Copied from [quizQuestions].
@ProviderFor(quizQuestions)
const quizQuestionsProvider = QuizQuestionsFamily();

/// Provider for quiz questions for a surah
///
/// Copied from [quizQuestions].
class QuizQuestionsFamily
    extends Family<AsyncValue<List<Map<String, dynamic>>>> {
  /// Provider for quiz questions for a surah
  ///
  /// Copied from [quizQuestions].
  const QuizQuestionsFamily();

  /// Provider for quiz questions for a surah
  ///
  /// Copied from [quizQuestions].
  QuizQuestionsProvider call(
    int surahId,
  ) {
    return QuizQuestionsProvider(
      surahId,
    );
  }

  @override
  QuizQuestionsProvider getProviderOverride(
    covariant QuizQuestionsProvider provider,
  ) {
    return call(
      provider.surahId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'quizQuestionsProvider';
}

/// Provider for quiz questions for a surah
///
/// Copied from [quizQuestions].
class QuizQuestionsProvider
    extends AutoDisposeFutureProvider<List<Map<String, dynamic>>> {
  /// Provider for quiz questions for a surah
  ///
  /// Copied from [quizQuestions].
  QuizQuestionsProvider(
    int surahId,
  ) : this._internal(
          (ref) => quizQuestions(
            ref as QuizQuestionsRef,
            surahId,
          ),
          from: quizQuestionsProvider,
          name: r'quizQuestionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$quizQuestionsHash,
          dependencies: QuizQuestionsFamily._dependencies,
          allTransitiveDependencies:
              QuizQuestionsFamily._allTransitiveDependencies,
          surahId: surahId,
        );

  QuizQuestionsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.surahId,
  }) : super.internal();

  final int surahId;

  @override
  Override overrideWith(
    FutureOr<List<Map<String, dynamic>>> Function(QuizQuestionsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: QuizQuestionsProvider._internal(
        (ref) => create(ref as QuizQuestionsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        surahId: surahId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Map<String, dynamic>>> createElement() {
    return _QuizQuestionsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is QuizQuestionsProvider && other.surahId == surahId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, surahId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin QuizQuestionsRef
    on AutoDisposeFutureProviderRef<List<Map<String, dynamic>>> {
  /// The parameter `surahId` of this provider.
  int get surahId;
}

class _QuizQuestionsProviderElement
    extends AutoDisposeFutureProviderElement<List<Map<String, dynamic>>>
    with QuizQuestionsRef {
  _QuizQuestionsProviderElement(super.provider);

  @override
  int get surahId => (origin as QuizQuestionsProvider).surahId;
}

String _$practiceQuestionsHash() => r'1fbe296344f6b436c9775ba37c7da8a5d90352c8';

/// Provider for practice questions by category (fiqh, seerah, etc.)
///
/// Copied from [practiceQuestions].
@ProviderFor(practiceQuestions)
const practiceQuestionsProvider = PracticeQuestionsFamily();

/// Provider for practice questions by category (fiqh, seerah, etc.)
///
/// Copied from [practiceQuestions].
class PracticeQuestionsFamily
    extends Family<AsyncValue<List<Map<String, dynamic>>>> {
  /// Provider for practice questions by category (fiqh, seerah, etc.)
  ///
  /// Copied from [practiceQuestions].
  const PracticeQuestionsFamily();

  /// Provider for practice questions by category (fiqh, seerah, etc.)
  ///
  /// Copied from [practiceQuestions].
  PracticeQuestionsProvider call(
    String category,
  ) {
    return PracticeQuestionsProvider(
      category,
    );
  }

  @override
  PracticeQuestionsProvider getProviderOverride(
    covariant PracticeQuestionsProvider provider,
  ) {
    return call(
      provider.category,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'practiceQuestionsProvider';
}

/// Provider for practice questions by category (fiqh, seerah, etc.)
///
/// Copied from [practiceQuestions].
class PracticeQuestionsProvider
    extends AutoDisposeFutureProvider<List<Map<String, dynamic>>> {
  /// Provider for practice questions by category (fiqh, seerah, etc.)
  ///
  /// Copied from [practiceQuestions].
  PracticeQuestionsProvider(
    String category,
  ) : this._internal(
          (ref) => practiceQuestions(
            ref as PracticeQuestionsRef,
            category,
          ),
          from: practiceQuestionsProvider,
          name: r'practiceQuestionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$practiceQuestionsHash,
          dependencies: PracticeQuestionsFamily._dependencies,
          allTransitiveDependencies:
              PracticeQuestionsFamily._allTransitiveDependencies,
          category: category,
        );

  PracticeQuestionsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.category,
  }) : super.internal();

  final String category;

  @override
  Override overrideWith(
    FutureOr<List<Map<String, dynamic>>> Function(PracticeQuestionsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PracticeQuestionsProvider._internal(
        (ref) => create(ref as PracticeQuestionsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        category: category,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Map<String, dynamic>>> createElement() {
    return _PracticeQuestionsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PracticeQuestionsProvider && other.category == category;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PracticeQuestionsRef
    on AutoDisposeFutureProviderRef<List<Map<String, dynamic>>> {
  /// The parameter `category` of this provider.
  String get category;
}

class _PracticeQuestionsProviderElement
    extends AutoDisposeFutureProviderElement<List<Map<String, dynamic>>>
    with PracticeQuestionsRef {
  _PracticeQuestionsProviderElement(super.provider);

  @override
  String get category => (origin as PracticeQuestionsProvider).category;
}

String _$todayDailyChallengeHash() =>
    r'61b7b40f674dfd9f7b2d94417c51dcb7e8ccee98';

/// Provider for today's daily challenge
///
/// Copied from [todayDailyChallenge].
@ProviderFor(todayDailyChallenge)
final todayDailyChallengeProvider =
    AutoDisposeFutureProvider<Map<String, dynamic>?>.internal(
  todayDailyChallenge,
  name: r'todayDailyChallengeProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todayDailyChallengeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TodayDailyChallengeRef
    = AutoDisposeFutureProviderRef<Map<String, dynamic>?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
