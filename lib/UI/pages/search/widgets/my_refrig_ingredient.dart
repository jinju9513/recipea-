import 'package:flutter/material.dart';

class MyRefrigIngredient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '냉장고 재료들',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Wrap(
            children: List.generate(15, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    '재료들',
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
