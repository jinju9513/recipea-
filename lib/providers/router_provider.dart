import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:recipea_app/UI/layout/bottom_scaffold.dart';
import 'package:recipea_app/UI/pages/home/home_page.dart';
import 'package:recipea_app/UI/pages/my_page/login.dart';
import 'package:recipea_app/UI/pages/search/search_page.dart';
import 'package:recipea_app/UI/pages/my_page/my_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/home',
    redirect: (context, state) {
  final user = FirebaseAuth.instance.currentUser;
  final isLogin = state.uri.toString() == '/login';
  final isMyPage = state.uri.toString() == '/mypage';

  // 마이페이지 접근 시만 로그인 확인
  if (isMyPage && user == null) {
    return '/login';
  }

  // 로그인 중인데 이미 로그인 된 경우 → 마이페이지로 리디렉트
  if (isLogin && user != null) {
    return '/mypage';
  }

  return null;
},

    routes: [
      /// ShellRoute로 바텀바 고정
      ShellRoute(
        builder: (context, state, child) => BottomScaffold(child: child),
        routes: [
          GoRoute(path: '/home', builder: (_, __) =>  HomePage()),
          GoRoute(path: '/search', builder: (_, __) =>  SearchPage()),
          GoRoute(path: '/mypage', builder: (_, __) => const MyPage()),
        ],
      ),
      GoRoute(path: '/login', builder: (_, __) => const Login()),
    ],
  );
});
