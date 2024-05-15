import 'package:flutter/material.dart';
import 'package:rent_car_app/authorizationPage/screen/authorizaiton_screen.dart';
import 'package:rent_car_app/theme/theme.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
        theme: theme,
        debugShowCheckedModeBanner: false,
        home: const AuthorizaitonScreen(),
      );
      },
    );
  }
}