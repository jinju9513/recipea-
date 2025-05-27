import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            height: 120,
            decoration: BoxDecoration(color: Colors.red),
            child: Center(child: Text('예시')),
          );
        },
      ),
    );
  }
}
