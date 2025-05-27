import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 12,
        runSpacing: 12,
        children: List.generate(30, (index) {
          return Container(width: 100, height: 100, color: Colors.amber);
        }),
      ),
    );
  }
}
