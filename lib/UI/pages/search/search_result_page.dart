import 'package:flutter/material.dart';

class SearchResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('검색 결과 페이지')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return _buildSearchResultItem(null, '예시 제목', '예시 내용');
          },
        ),
      ),
    );
  }

  Widget _buildSearchResultItem(
    String? imageUrl,
    String title,
    String content,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          imageUrl != null
              ? Image.network(
                imageUrl,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              )
              : Image.network(
                'https://picsum.photos/80',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
          Expanded(child: Column(children: [Text(title), Text(content)])),
        ],
      ),
    );
  }
}
