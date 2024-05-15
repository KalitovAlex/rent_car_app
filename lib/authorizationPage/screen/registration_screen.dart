import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_car_app/helper/adaptive_helper.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: mobilePadding(context),
        width: width(context),
        height: height(context),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            

          ],
        ),
      ),
    );
  }
}