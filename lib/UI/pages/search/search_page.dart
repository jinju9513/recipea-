import 'package:flutter/material.dart';
import 'package:recipea_app/UI/pages/search/search_result_page.dart';
import 'package:recipea_app/UI/pages/search/widgets/my_refrig_ingredient.dart';
import 'package:recipea_app/UI/pages/search/widgets/regist_done_ingredient.dart';
import 'package:recipea_app/UI/pages/search/widgets/search_field.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('검색')),
      body: Column(
        children: [
          SearchField(),
          MyRefrigIngredient(),
          Divider(color: Colors.black),
          RegistDoneIngredient(),
          SizedBox(height: 50),
          SizedBox(
            width: 300,

            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[200],
                foregroundColor: Colors.blue,
              ),

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchResultPage()),
                );
              },
              child: Text('검색하기'),
            ),
          ),
        ],
      ),
    );
  }
}
