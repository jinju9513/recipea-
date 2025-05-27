import 'package:flutter/material.dart';

AppBar commonAppBar(String titleText) {
  return AppBar(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    elevation: 1,
    title: Text(
      titleText,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
