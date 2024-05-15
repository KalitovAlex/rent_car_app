import 'package:flutter/material.dart';
import 'package:rent_car_app/helper/adaptive_helper.dart';
import 'package:rent_car_app/main.dart';
import 'package:rent_car_app/theme/style/container_form_styles.dart';
import 'package:rent_car_app/theme/style/text_form_styles.dart';
import 'package:sizer/sizer.dart';

class AuthorizaitonScreen extends StatelessWidget {
  const AuthorizaitonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(image:  DecorationImage(image: AssetImage('assets/png/background.jpeg'),fit: BoxFit.cover)),
          height: height(context),
          width: width(context),
          padding: EdgeInsets.only(left: 5.w, right: 5.w,top: 0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.h),
              Text('Вход',style: Theme.of(context).textTheme.labelMedium,),
              Container(height: 6.h,decoration: text_field_boxdecoration,child: TextFormField(decoration: invisible_input_decoration,))
            ],
          ),
        ),
    );
  }
}