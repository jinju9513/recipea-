import 'package:flutter/material.dart';

class SectionContainer extends StatelessWidget {
  final String title;
  // final String? subtitle;
  final List<Widget> children;

  const SectionContainer({
    super.key,
    required this.title,
    // this.subtitle,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              // if (subtitle != null) ...[
              //   const Spacer(),
              //   Text(subtitle!, style: const TextStyle(color: Colors.grey)),
              // ],
            ],
          ),
          const SizedBox(height: 12),
          GridView.count(
            crossAxisCount: 4,
            childAspectRatio: 1,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: children,
          )
        ],
      ),
    );
  }
}
