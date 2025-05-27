import 'package:flutter/material.dart';
import 'package:recipea_app/UI/pages/home/widgets/home_banner.dart';
import 'package:recipea_app/UI/pages/home/widgets/home_category.dart';
import 'package:recipea_app/UI/pages/home/widgets/home_popular.dart';
import 'package:recipea_app/UI/pages/widgets/bottom_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Recipea'),
            Icon(Icons.notifications),
            Icon(Icons.search),
          ],
        ),
      ),
      body: ListView(
        children: [
          HomeBanner(),
          SizedBox(height: 16),
          HomeCategory(),
          SizedBox(height: 16),
          HomePopular(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(child: BottomBar()),
    );
  }
}
