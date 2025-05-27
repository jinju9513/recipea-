import 'package:flutter/material.dart';
import 'package:recipea_app/UI/pages/home/widgets/home_banner.dart';
import 'package:recipea_app/UI/pages/home/widgets/home_category.dart';
import 'package:recipea_app/UI/pages/home/widgets/home_sale.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Recipea'),
            Icon(Icons.notifications),
            Icon(Icons.shopping_cart),
          ],
        ),
      ),
      body: ListView(children: [HomeBanner(), HomeCategory(), HomeSale()]),
    );
  }
}
