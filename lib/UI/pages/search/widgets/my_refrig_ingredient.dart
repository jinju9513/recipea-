import 'package:flutter/material.dart';

class MyRefrigIngredient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(15, (index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text('재료들'),
          ),
        );
      }),
    );
  }
}
