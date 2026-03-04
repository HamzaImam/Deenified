import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../services/revenuecat_service.dart';

part 'subscription_provider.g.dart';

/// Provider for subscription status
@riverpod
class Subscription extends _$Subscription {
  @override
  Future<SubscriptionStatus> build() async {
    return await RevenueCatService.instance.getSubscriptionStatus();
  }

  /// Check if user has premium access
  Future<bool> hasPremiumAccess() async {
    return await RevenueCatService.instance.hasPremiumAccess();
  }

  /// Refresh subscription status
  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return await RevenueCatService.instance.getSubscriptionStatus();
    });
  }

  /// Restore purchases
  Future<void> restorePurchases() async {
    await RevenueCatService.instance.restorePurchases();
    await refresh();
  }
}

/// Provider for premium access check
@riverpod
Future<bool> isPremium(IsPremiumRef ref) async {
  final subscription = await ref.watch(subscriptionProvider.future);
  return subscription.isActive;
}
