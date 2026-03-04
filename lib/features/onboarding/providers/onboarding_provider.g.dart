// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$onboardingProgressHash() =>
    r'7d015ebaf85152ae9ef12ac499f04028894dacc6';

/// Progress percentage for onboarding
///
/// Copied from [onboardingProgress].
@ProviderFor(onboardingProgress)
final onboardingProgressProvider = AutoDisposeProvider<double>.internal(
  onboardingProgress,
  name: r'onboardingProgressProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$onboardingProgressHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef OnboardingProgressRef = AutoDisposeProviderRef<double>;
String _$onboardingHash() => r'6db1e18454d4445b702db7e7e088b25eb89a5381';

/// Onboarding provider to manage onboarding flow state
///
/// Copied from [Onboarding].
@ProviderFor(Onboarding)
final onboardingProvider =
    AutoDisposeNotifierProvider<Onboarding, OnboardingState>.internal(
  Onboarding.new,
  name: r'onboardingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$onboardingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Onboarding = AutoDisposeNotifier<OnboardingState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
