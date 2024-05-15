import 'package:flutter/material.dart';
import 'package:rent_car_app/helper/adaptive_helper.dart';
import 'package:rent_car_app/main.dart';

class AuthorizaitonScreen extends StatelessWidget {
  const AuthorizaitonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: height(context),
          width: width(context),
        ),
    );
  }
}