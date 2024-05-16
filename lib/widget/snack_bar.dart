import 'package:flutter/material.dart';

Future<void> showSnackBar(context, String message) async{
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 1),
      content: Text(message),
      backgroundColor: Colors.grey,
    ),
  );
}