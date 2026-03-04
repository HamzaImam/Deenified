import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../services/supabase_service.dart';

part 'auth_provider.g.dart';

/// Provider for auth state
@riverpod
class Auth extends _$Auth {
  @override
  Stream<AuthState> build() {
    return SupabaseService.instance.authStateChanges;
  }

  /// Sign up with email and password
  Future<AuthResponse> signUp({
    required String email,
    required String password,
  }) async {
    return await SupabaseService.instance.signUp(
      email: email,
      password: password,
    );
  }

  /// Sign in with email and password
  Future<AuthResponse> signIn({
    required String email,
    required String password,
  }) async {
    return await SupabaseService.instance.signIn(
      email: email,
      password: password,
    );
  }

  /// Sign out
  Future<void> signOut() async {
    await SupabaseService.instance.signOut();
  }
}

/// Provider for current user
@riverpod
User? currentUser(CurrentUserRef ref) {
  return SupabaseService.instance.currentUser;
}

/// Provider for checking if user is authenticated
@riverpod
bool isAuthenticated(IsAuthenticatedRef ref) {
  return SupabaseService.instance.isAuthenticated;
}
