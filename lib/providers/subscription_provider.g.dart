// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isPremiumHash() => r'f68300993934ca08e2fc71891e64d6608bf4c436';

/// Provider for premium access check
///
/// Copied from [isPremium].
@ProviderFor(isPremium)
final isPremiumProvider = AutoDisposeFutureProvider<bool>.internal(
  isPremium,
  name: r'isPremiumProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$isPremiumHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef IsPremiumRef = AutoDisposeFutureProviderRef<bool>;
String _$subscriptionHash() => r'174dbb399e0c7b5a7a097f0214c4110898d2cf1e';

/// Provider for subscription status
///
/// Copied from [Subscription].
@ProviderFor(Subscription)
final subscriptionProvider =
    AutoDisposeAsyncNotifierProvider<Subscription, SubscriptionStatus>.internal(
  Subscription.new,
  name: r'subscriptionProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$subscriptionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Subscription = AutoDisposeAsyncNotifier<SubscriptionStatus>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
