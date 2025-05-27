import 'package:flutter/material.dart';

class IconTextItem extends StatelessWidget {
  final String label;
  final IconData icon;
   final VoidCallback? onTap;

  const IconTextItem({
    super.key,
    required this.label,
    required this.icon,
     this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 28),
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
