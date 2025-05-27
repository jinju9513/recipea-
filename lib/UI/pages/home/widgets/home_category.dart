import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 12,
        runSpacing: 12,
        children: List.generate(12, (index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.amber,
            ),
            width: 55,
            height: 55,
          );
        }),
      ),
    );
  }
}
