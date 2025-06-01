import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:recipea_app/repositories/auth_repository.dart';

class AuthViewModel extends StateNotifier<User?> {
  final AuthRepository _repository;

  AuthViewModel(this._repository) : super(null) {
    // 초기 로그인 상태 확인
    checkLoginStatus();
  }

  bool get isLoggedIn => state != null;

  Future<void> loginWithGoogle() async {
    final user = await _repository.signInWithGoogle();
    if (user != null) {
      state = user;
    }
  }

  Future<void> logout() async {
    await _repository.signOut();
    state = null;
  }

  void checkLoginStatus() {
    state = _repository.currentUser;
  }
}
