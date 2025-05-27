import 'package:flutter/material.dart';
import 'package:recipea_app/UI/pages/search/widgets/my_refrig_ingredient.dart';
import 'package:recipea_app/UI/pages/search/widgets/regist_done_ingredient.dart';
import 'package:recipea_app/UI/pages/search/widgets/search_ingredient.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('검색'))),
      body: Column(
        children: [
          SearchIngredient(),
          MyRefrigIngredient(),
          RegistDoneIngredient(),
          ElevatedButton(onPressed: () {}, child: Text('검색하기')),
        ],
      ),
    );
  }
}
