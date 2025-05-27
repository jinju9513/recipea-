import 'package:flutter/material.dart';
import 'package:recipea_app/UI/pages/refirg/my_frigerator_list_page.dart';
import 'package:recipea_app/UI/pages/refirg/widgets/ingredient_category_tabs.dart';
import 'package:recipea_app/UI/pages/refirg/widgets/ingredient_grid.dart';
import 'package:recipea_app/UI/pages/widgets/common_app_bar.dart';

class IngredientRegisterPage extends StatefulWidget {
  const IngredientRegisterPage({super.key});

  @override
  State<IngredientRegisterPage> createState() => _IngredientRegisterPageState();
}

class _IngredientRegisterPageState extends State<IngredientRegisterPage> {
  String selectedCategory = '전체';

  final List<String> categories = ['전체', '야채', '해산물', '소스', '기타'];

  final List<Map<String, dynamic>> ingredients = [
    {'name': '꽃게', 'emoji': '🦀', 'category': '해산물'},
    {'name': '토마토케찹', 'emoji': '🥫', 'category': '소스'},
    {'name': '소금', 'emoji': '🧂', 'category': '소스'},
    {'name': '새우', 'emoji': '🦐', 'category': '해산물'},
    {'name': '가지', 'emoji': '🍆', 'category': '야채'},
    {'name': '간장', 'emoji': '🧴', 'category': '소스'},
    {'name': '김치', 'emoji': '🥬', 'category': '기타'},
    {'name': '계란', 'emoji': '🥚', 'category': '기타'},
    {'name': '고추', 'emoji': '🌶️', 'category': '야채'},
    {'name': '당근', 'emoji': '🥕', 'category': '야채'},
    {'name': '딸기', 'emoji': '🍓', 'category': '기타'},
    {'name': '마늘', 'emoji': '🧄', 'category': '야채'},
    {'name': '브로콜리', 'emoji': '🥦', 'category': '야채'},
    {'name': '시금치', 'emoji': '🥬', 'category': '야채'},
    {'name': '아보카도', 'emoji': '🥑', 'category': '야채'},
    {'name': '양파', 'emoji': '🧅', 'category': '야채'},
    {'name': '오이', 'emoji': '🥒', 'category': '야채'},
    {'name': '오징어', 'emoji': '🦑', 'category': '해산물'},
    {'name': '치즈', 'emoji': '🧀', 'category': '기타'},
    {'name': '콩', 'emoji': '🫘', 'category': '기타'},
    {'name': '피망', 'emoji': '🫑', 'category': '야채'},
    {'name': '감자', 'emoji': '🥔', 'category': '야채'},
  ];

  final Set<String> selectedIngredients = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar('MY 냉장고'),
      body: Column(
        children: [
          const SizedBox(height: 16),
          const Text(
            '사용하고 싶은 재료를 고르고\n레시피를 추천받아보세요!',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          const SizedBox(height: 16),
          IngredientCategoryTabs(
            categories: categories,
            selectedCategory: selectedCategory,
            onCategorySelected: (value) {
              setState(() => selectedCategory = value);
            },
          ),
          const SizedBox(height: 8),
          Expanded(
            child: IngredientGrid(
              ingredients: _filteredIngredients(),
              selectedIngredients: selectedIngredients,
              onToggle: (name) {
                setState(() {
                  if (selectedIngredients.contains(name)) {
                    selectedIngredients.remove(name);
                  } else {
                    selectedIngredients.add(name);
                  }
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MyRefrigeratorListPage(
                        selectedItems: selectedIngredients.toList(),
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFC86C8B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  '재료 추가하기',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Map<String, dynamic>> _filteredIngredients() {
    return selectedCategory == '전체'
        ? ingredients
        : ingredients
            .where((item) => item['category'] == selectedCategory)
            .toList();
  }
}
