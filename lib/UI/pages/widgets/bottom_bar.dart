import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildNavItem(Icons.home, '홈'),
        _buildNavItem(Icons.forum, '라운지'),
        _buildNavItem(Icons.category, '카테고리'),
        _buildNavItem(Icons.search, '검색'),
        _buildNavItem(Icons.person, '마이페이지'),
      ],
    );
  }

  Widget _buildNavItem(IconData icon, String label) {
    return Column(children: [Icon(icon), SizedBox(height: 10), Text(label)]);
  }
}
