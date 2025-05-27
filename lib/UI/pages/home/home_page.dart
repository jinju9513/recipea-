import 'package:flutter/material.dart';
import 'package:recipea_app/UI/pages/home/widgets/home_banner.dart';
import 'package:recipea_app/UI/pages/home/widgets/home_category.dart';
import 'package:recipea_app/UI/pages/home/widgets/home_popular.dart';
import 'package:recipea_app/UI/pages/search/search_page.dart';
import 'package:recipea_app/UI/pages/widgets/bottom_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Stack(
          children: [
            Center(
              child: Text(
                'Recipea',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            Positioned(
              right: 0,
              child: Row(
                children: [
                  Icon(Icons.notifications),
                  SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SearchPage()),
                      );
                    },
                    child: Icon(Icons.search),
                  ),
                ],
              ),
            ),
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
