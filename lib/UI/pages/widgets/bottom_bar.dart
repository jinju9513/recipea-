import 'package:flutter/material.dart';
import 'package:recipea_app/UI/pages/home/home_page.dart';
import 'package:recipea_app/UI/pages/my_page/my_page.dart';
import 'package:recipea_app/UI/pages/search/search_page.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildNavItem(context, Icons.home, '홈', HomePage()),
        _buildNavItem(context, Icons.forum, '라운지', MyPage()),
        _buildNavItem(context, Icons.category, '카테고리', MyPage()),
        _buildNavItem(context, Icons.search, '검색', SearchPage()),
        _buildNavItem(context, Icons.person, '마이페이지', MyPage()),
      ],
    );
  }

  Widget _buildNavItem(
    BuildContext context,
    IconData icon,
    String label,
    Widget targetPage,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => targetPage),
        );
      },
      child: Column(children: [Icon(icon), SizedBox(height: 10), Text(label)]),
    );
  }
}
