import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:recipea_app/UI/pages/widgets/common_app_bar.dart';
import 'package:recipea_app/core/colors.dart';
import 'package:recipea_app/providers/auth_provider.dart';

class Login extends ConsumerWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authVM = ref.watch(authViewModelProvider.notifier);
    final user = ref.watch(authViewModelProvider);
    return Scaffold(
      appBar: commonAppBar('로그인'),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '나만의 냉장고와\n레시피 추천을 이용하려면 로그인해주세요!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton.icon(
                  onPressed: () async {
                    await authVM.loginWithGoogle();

                    if (ref.read(authViewModelProvider) != null) {
                      // 로그인 성공 시 페이지 이동
                     context.go('/mypage');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('로그인에 실패했습니다.')),
                      );
                    }
                  },
                  icon: const Icon(Icons.login, color: Colors.white),
                  label: const Text(
                    'Google 로그인하러 가기',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.mainPink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
