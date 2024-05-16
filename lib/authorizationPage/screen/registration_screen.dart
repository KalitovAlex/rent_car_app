import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_car_app/helper/adaptive_helper.dart';
import 'package:rent_car_app/theme/style/container_form_styles.dart';
import 'package:rent_car_app/theme/style/text_form_styles.dart';
import 'package:sizer/sizer.dart';
@RoutePage()
class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userLogin = TextEditingController();
    TextEditingController userName = TextEditingController();
    TextEditingController userNumber = TextEditingController();
    TextEditingController userEmail = TextEditingController();
    TextEditingController userPassword = TextEditingController();
    TextEditingController userSecondPassword = TextEditingController();
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/png/background_car.jpeg'),fit: BoxFit.cover)
        ),
        padding: mobilePadding(context),
        width: width(context),
        height: height(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          SizedBox(height: 5.h,),
          Text('Регистрация',style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
          SizedBox(height: 4.h,),
          Container(height: 6.h,decoration: text_field_boxdecoration,child: TextFormField(
            controller: userLogin,
            decoration: invisible_input_decoration('Введите логин'),)), 
          SizedBox(height: 2.h,),
          Container(height: 6.h,
          decoration: text_field_boxdecoration,
          child: TextFormField(
            controller: userName,
            decoration: invisible_input_decoration('Введите ФИО'),)), 
          SizedBox(height: 4.h,),
          Container(
            height: 6.h,
            decoration: text_field_boxdecoration,
            child: TextFormField(
              controller: userNumber,
              decoration: invisible_input_decoration('Введите номер телефона'),)), 
          SizedBox(height: 2.h,),
          Container(height: 6.h,
          decoration: text_field_boxdecoration,
          child: TextFormField(
            controller: userEmail,
            decoration: invisible_input_decoration('Введите почту'),)), 
          SizedBox(height: 4.h,),
          Container(height: 6.h,
          decoration: text_field_boxdecoration,
          child: TextFormField(
            controller: userPassword,
            decoration: invisible_input_decoration('Введите пароль'),)), 
          SizedBox(height: 2.h,),
          Container(height: 6.h,
          decoration: text_field_boxdecoration,
          child: TextFormField(
            controller: userSecondPassword,
            decoration: invisible_input_decoration('Введите повторно пароль'),)), 
          SizedBox(height: 4.h,),
          Container(
            height: 6.h,
            width: 80.w,
            decoration: button_grey_decoration,
            child: TextButton(onPressed: (){},
            child: Text('Зарегистрироваться',
            style: Theme.of(context).textTheme.titleMedium,)),)
          ],
        ),
      ),
    );
  }
}