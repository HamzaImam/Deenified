// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$surahsHash() => r'c49736d6b864a3fa41a8d53d58823033a4dad3c9';

/// Provider for all surahs (ordered by id = surah number)
///
/// Copied from [surahs].
@ProviderFor(surahs)
final surahsProvider =
    AutoDisposeFutureProvider<List<Map<String, dynamic>>>.internal(
  surahs,
  name: r'surahsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$surahsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SurahsRef = AutoDisposeFutureProviderRef<List<Map<String, dynamic>>>;
String _$surahHash() => r'5d79f74c84944fa76dfa5208ddb53dbf2d0ebb3f';

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

/// Provider for a single surah by id (id = surah number, 1-114)
///
/// Copied from [surah].
@ProviderFor(surah)
const surahProvider = SurahFamily();

/// Provider for a single surah by id (id = surah number, 1-114)
///
/// Copied from [surah].
class SurahFamily extends Family<AsyncValue<Map<String, dynamic>?>> {
  /// Provider for a single surah by id (id = surah number, 1-114)
  ///
  /// Copied from [surah].
  const SurahFamily();

  /// Provider for a single surah by id (id = surah number, 1-114)
  ///
  /// Copied from [surah].
  SurahProvider call(
    int id,
  ) {
    return SurahProvider(
      id,
    );
  }

  @override
  SurahProvider getProviderOverride(
    covariant SurahProvider provider,
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
  String? get name => r'surahProvider';
}

/// Provider for a single surah by id (id = surah number, 1-114)
///
/// Copied from [surah].
class SurahProvider extends AutoDisposeFutureProvider<Map<String, dynamic>?> {
  /// Provider for a single surah by id (id = surah number, 1-114)
  ///
  /// Copied from [surah].
  SurahProvider(
    int id,
  ) : this._internal(
          (ref) => surah(
            ref as SurahRef,
            id,
          ),
          from: surahProvider,
          name: r'surahProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$surahHash,
          dependencies: SurahFamily._dependencies,
          allTransitiveDependencies: SurahFamily._allTransitiveDependencies,
          id: id,
        );

  SurahProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<Map<String, dynamic>?> Function(SurahRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SurahProvider._internal(
        (ref) => create(ref as SurahRef),
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
    return _SurahProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SurahProvider && other.id == id;
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
mixin SurahRef on AutoDisposeFutureProviderRef<Map<String, dynamic>?> {
  /// The parameter `id` of this provider.
  int get id;
}

class _SurahProviderElement
    extends AutoDisposeFutureProviderElement<Map<String, dynamic>?>
    with SurahRef {
  _SurahProviderElement(super.provider);

  @override
  int get id => (origin as SurahProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
