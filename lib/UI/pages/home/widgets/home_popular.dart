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
                return Container(
                  decoration: BoxDecoration(color: Colors.green),
                  child: Text('예시 인기있는'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
