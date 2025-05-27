import 'package:flutter/material.dart';
import 'package:recipea_app/UI/pages/widgets/common_app_bar.dart';
import 'package:recipea_app/core/colors.dart';

class MyRefrigeratorListPage extends StatefulWidget {
  final List<String> selectedItems;

  const MyRefrigeratorListPage({super.key, required this.selectedItems});

  @override
  State<MyRefrigeratorListPage> createState() => _MyRefrigeratorListPageState();
}

class _MyRefrigeratorListPageState extends State<MyRefrigeratorListPage> {
  late List<String> items;

  final Map<String, String> emojiMap = {
    '꽃게': '🦀',
    '토마토케찹': '🥫',
    '소금': '🧂',
    '새우': '🦐',
    '가지': '🍆',
    '간장': '🧴',
    '김치': '🥬',
    '계란': '🥚',
    '고추': '🌶️',
    '당근': '🥕',
    '딸기': '🍓',
    '마늘': '🧄',
    '브로콜리': '🥦',
    '시금치': '🥬',
    '아보카도': '🥑',
    '양파': '🧅',
    '오이': '🥒',
    '오징어': '🦑',
    '치즈': '🧀',
    '콩': '🫘',
    '피망': '🫑',
    '감자': '🥔',
  };

  @override
  void initState() {
    super.initState();
    items = List.from(widget.selectedItems);
  }

  void _removeItem(String name) {
    setState(() {
      items.remove(name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar('MY 냉장고'),
      body: Column(
        children: [
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('전체 ${items.length}개',
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                itemCount: items.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 2.8,
                ),
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.mainPink),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Text(
                          emojiMap[item] ?? '🍽️',
                          style: const TextStyle(fontSize: 24),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(item, style: const TextStyle(fontSize: 14)),
                        ),
                        TextButton(
                          onPressed: () => _removeItem(item),
                          style: TextButton.styleFrom(
                            foregroundColor: AppColors.mainPink,
                            side: const BorderSide(color: AppColors.mainPink),
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                          ),
                          child: const Text('삭제'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // 추천 레시피 페이지 이동 처리
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.mainPink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text('추천 레시피 바로가기', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
