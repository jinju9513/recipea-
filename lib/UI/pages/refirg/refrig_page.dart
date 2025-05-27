import 'package:flutter/material.dart';
import 'package:recipea_app/UI/pages/refirg/ingredient_register_page.dart';
import 'package:recipea_app/UI/pages/refirg/widgets/refirg_app_bar.dart';
import 'package:recipea_app/core/colors.dart';

class RefrigPage extends StatelessWidget {
  const RefrigPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildMyAppBar('My냉장고'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '우리집 냉장고에 있는 재료를\n등록해보세요!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.mainPink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              onPressed: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const IngredientRegisterPage()),
            );
              },
              child: const Text(
                '재료 등록하기',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
