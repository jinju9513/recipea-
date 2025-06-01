import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipea_app/UI/viewmodels/auth_view_model.dart';
import 'package:recipea_app/repositories/auth_repository.dart';

final authViewModelProvider =
    StateNotifierProvider<AuthViewModel, User?>((ref) {
  return AuthViewModel(AuthRepository());
});
