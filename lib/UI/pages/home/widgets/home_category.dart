import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(color: Colors.blue),
            child: Center(child: Text('예시 카테고리')),
          );
        },
      ),
    );
  }
}
