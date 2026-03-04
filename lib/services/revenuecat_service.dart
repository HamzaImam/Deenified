import 'package:purchases_flutter/purchases_flutter.dart';

/// Service for managing RevenueCat subscriptions
class RevenueCatService {
  RevenueCatService._();

  static final instance = RevenueCatService._();

  /// Entitlement identifier for premium access
  static const String premiumEntitlement = 'Deenified Pro';

  /// Product identifiers (matching RevenueCat Test Store)
  static const String monthlyProductId = 'monthly';
  static const String yearlyProductId = 'yearly';

  /// Get current customer info
  Future<CustomerInfo> getCustomerInfo() async {
    return await Purchases.getCustomerInfo();
  }

  /// Check if user has premium access
  Future<bool> hasPremiumAccess() async {
    try {
      final customerInfo = await getCustomerInfo();
      return customerInfo.entitlements.active.containsKey(premiumEntitlement);
    } catch (e) {
      return false;
    }
  }

  /// Get premium entitlement info
  Future<EntitlementInfo?> getPremiumEntitlement() async {
    try {
      final customerInfo = await getCustomerInfo();
      return customerInfo.entitlements.active[premiumEntitlement];
    } catch (e) {
      return null;
    }
  }

  /// Get available offerings (products)
  Future<Offerings?> getOfferings() async {
    try {
      return await Purchases.getOfferings();
    } catch (e) {
      return null;
    }
  }

  /// Get the current (default) offering
  Future<Offering?> getCurrentOffering() async {
    try {
      final offerings = await Purchases.getOfferings();
      return offerings.current;
    } catch (e) {
      return null;
    }
  }

  /// Purchase a package
  Future<CustomerInfo?> purchasePackage(Package package) async {
    try {
      return await Purchases.purchasePackage(package);
    } catch (e) {
      if (e is PurchasesErrorCode) {
        // User cancelled or other error
        return null;
      }
      rethrow;
    }
  }

  /// Restore previous purchases
  Future<CustomerInfo?> restorePurchases() async {
    try {
      return await Purchases.restorePurchases();
    } catch (e) {
      return null;
    }
  }

  /// Login user to RevenueCat
  Future<void> login(String userId) async {
    try {
      await Purchases.logIn(userId);
    } catch (e) {
      // Handle login error
    }
  }

  /// Logout user from RevenueCat
  Future<void> logout() async {
    try {
      await Purchases.logOut();
    } catch (e) {
      // Handle logout error
    }
  }

  /// Add listener for customer info updates
  void addCustomerInfoListener(void Function(CustomerInfo) listener) {
    Purchases.addCustomerInfoUpdateListener(listener);
  }

  /// Get subscription status details
  Future<SubscriptionStatus> getSubscriptionStatus() async {
    final customerInfo = await getCustomerInfo();
    final premium = customerInfo.entitlements.active[premiumEntitlement];

    if (premium == null) {
      return SubscriptionStatus(
        isActive: false,
        type: SubscriptionType.none,
      );
    }

    return SubscriptionStatus(
      isActive: premium.isActive,
      type: premium.productIdentifier.contains('monthly')
          ? SubscriptionType.monthly
          : SubscriptionType.yearly,
      expirationDate: premium.expirationDate != null
          ? DateTime.parse(premium.expirationDate!)
          : null,
      willRenew: premium.willRenew,
    );
  }
}

/// Subscription status model
class SubscriptionStatus {
  final bool isActive;
  final SubscriptionType type;
  final DateTime? expirationDate;
  final bool willRenew;

  SubscriptionStatus({
    required this.isActive,
    required this.type,
    this.expirationDate,
    this.willRenew = false,
  });
}

/// Subscription types
enum SubscriptionType {
  none,
  monthly,
  yearly,
}
