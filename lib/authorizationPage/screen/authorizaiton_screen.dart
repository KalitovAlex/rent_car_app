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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 25.h),
              Text('Вход',style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
              SizedBox(height: 3.h,),
              Container(height: 6.h,decoration: text_field_boxdecoration,child: TextFormField(decoration: invisible_input_decoration('Логин или номер телефона'),)), 
              SizedBox(height: 2.h,),
              Container(height: 6.h,decoration: text_field_boxdecoration,child: TextFormField(decoration: invisible_input_decoration('пароль'),)),
              SizedBox(height: 2.h,),
              Container(
                decoration: button_black_decoration,
                child: TextButton(onPressed: (){
                  
                }, child: Text('Войти', style: Theme.of(context).textTheme.labelMedium,)),
              )
            ],
          ),
        ),
    );
  }
}