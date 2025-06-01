import 'package:flutter/material.dart';
import 'package:recipea_app/UI/pages/widgets/bottom_bar.dart';

class BottomScaffold extends StatelessWidget {
  final Widget child;

  const BottomScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: SafeArea(
        child: const BottomBar(),
      ), 
    );
  }
}
