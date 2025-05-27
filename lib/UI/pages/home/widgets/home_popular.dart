import 'package:flutter/material.dart';

class HomePopular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        children: [
          Text(
            '가장 인기있는 레시피',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(color: Colors.green),
                      child: Text('예시 인기있는'),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
