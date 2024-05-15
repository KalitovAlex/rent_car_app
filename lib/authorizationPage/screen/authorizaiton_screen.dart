import 'package:flutter/material.dart';
import 'package:rent_car_app/helper/adaptive_helper.dart';
import 'package:rent_car_app/main.dart';
import 'package:sizer/sizer.dart';

class AuthorizaitonScreen extends StatelessWidget {
  const AuthorizaitonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(image:  DecorationImage(image: AssetImage('assets/png/background.jpeg'),fit: BoxFit.cover)),
          height: height(context),
          width: width(context),
          padding: EdgeInsets.only(left: 5.w, right: 5.w,top: 15.h),
          child: Column(),
        ),
    );
  }
}