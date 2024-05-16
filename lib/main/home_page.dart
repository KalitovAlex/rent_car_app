import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rent_car_app/core/globals.dart';
import 'package:rent_car_app/theme/style/container_form_styles.dart';
import 'package:sizer/sizer.dart';
@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 0.h),
        child: Center(child: Container(
          width: 50.w,
          decoration: button_black_decoration,
          child: TextButton(onPressed: (){authService.signOut();}, child: Text('Sign out', style: Theme.of(context).textTheme.labelMedium,))),),
      ),
    );
  }
}