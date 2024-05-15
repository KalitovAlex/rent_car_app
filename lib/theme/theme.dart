import 'package:flutter/material.dart';
final theme = ThemeData(

  colorScheme: ColorScheme.fromSeed(seedColor:  const Color.fromARGB(255, 117, 164, 245).withOpacity(0.7),brightness: Brightness.light).copyWith(surface: Colors.blue),
  textTheme: const TextTheme(
    labelMedium: TextStyle(
      color: Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.w600
    )
  )
);