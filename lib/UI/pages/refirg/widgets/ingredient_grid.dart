import 'package:flutter/material.dart';

class IngredientGrid extends StatelessWidget {
  final List<Map<String, dynamic>> ingredients;
  final Set<String> selectedIngredients;
  final Function(String) onToggle;

  const IngredientGrid({
    super.key,
    required this.ingredients,
    required this.selectedIngredients,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.builder(
        itemCount: ingredients.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          final item = ingredients[index];
          final name = item['name'];
          final emoji = item['emoji'];
          final isSelected = selectedIngredients.contains(name);

          return GestureDetector(
            onTap: () => onToggle(name),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: isSelected ? const Color(0xFFC86C8B) : Colors.grey.shade300,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(emoji, style: const TextStyle(fontSize: 30)),
                  const SizedBox(height: 4),
                  Text(name, style: const TextStyle(fontSize: 12)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
