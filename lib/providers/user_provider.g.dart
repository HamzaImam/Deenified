// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentStreakHash() => r'a96a91843b957d9aeed0b2f2006bd3515ea78c15';

/// Provider for current streak
///
/// Copied from [currentStreak].
@ProviderFor(currentStreak)
final currentStreakProvider = AutoDisposeProvider<int>.internal(
  currentStreak,
  name: r'currentStreakProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentStreakHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CurrentStreakRef = AutoDisposeProviderRef<int>;
String _$longestStreakHash() => r'bb1ce1ad096458b4b9ff286dc55553cbba31e14c';

/// Provider for longest streak
///
/// Copied from [longestStreak].
@ProviderFor(longestStreak)
final longestStreakProvider = AutoDisposeProvider<int>.internal(
  longestStreak,
  name: r'longestStreakProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$longestStreakHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LongestStreakRef = AutoDisposeProviderRef<int>;
String _$userProfileHash() => r'47932831987f275881fad581b588c5096b344bd2';

/// Provider for user profile
///
/// Copied from [UserProfile].
@ProviderFor(UserProfile)
final userProfileProvider = AutoDisposeAsyncNotifierProvider<UserProfile,
    Map<String, dynamic>?>.internal(
  UserProfile.new,
  name: r'userProfileProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userProfileHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserProfile = AutoDisposeAsyncNotifier<Map<String, dynamic>?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
