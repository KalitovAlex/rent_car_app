import 'package:flutter/material.dart';
final theme = ThemeData(

  colorScheme: ColorScheme.fromSeed(seedColor:  const Color.fromARGB(255, 117, 164, 245).withOpacity(0.7),brightness: Brightness.light).copyWith(surface: Colors.blue),
  textTheme: const TextTheme(
    labelLarge: TextStyle(
      color: Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.w600
    ),
    labelMedium: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w500
    ),
    titleMedium: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w500
    ),
    titleLarge: TextStyle(
      color: Colors.black,
      fontSize: 25,
      fontWeight: FontWeight.w500
    )
  ),
);