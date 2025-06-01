import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildNavItem(context, Icons.home, '홈', '/home'),
        _buildNavItem(context, Icons.forum, '라운지', '/lounge'),
        _buildNavItem(context, Icons.category, '카테고리', '/category'),
        _buildNavItem(context, Icons.search, '검색', '/search'),
        _buildNavItem(context, Icons.person, '마이페이지', '/mypage', isMyPage: true),
      ],
    );
  }

  Widget _buildNavItem(
    BuildContext context,
    IconData icon,
    String label,
    String routePath, {
    bool isMyPage = false,
  }) {
    return GestureDetector(
      onTap: () {
        if (isMyPage && FirebaseAuth.instance.currentUser == null) {
          context.go('/login');
        } else {
          context.go(routePath);
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon),
          const SizedBox(height: 10),
          Text(label),
        ],
      ),
    );
  }
}
