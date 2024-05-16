import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rent_car_app/core/globals.dart';
import 'package:rent_car_app/core/routes.gr.dart';
import 'package:rent_car_app/helper/adaptive_helper.dart';
import 'package:rent_car_app/main.dart';
import 'package:rent_car_app/theme/style/container_form_styles.dart';
import 'package:rent_car_app/theme/style/text_form_styles.dart';
import 'package:sizer/sizer.dart';
part 'authorizaton_screen_extension.dart';
@RoutePage()
class AuthorizaitonScreen extends StatefulWidget {
  const AuthorizaitonScreen({super.key});

  @override
  State<AuthorizaitonScreen> createState() => _AuthorizaitonScreenState();
}

class _AuthorizaitonScreenState extends State<AuthorizaitonScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
            decoration: const BoxDecoration(image:  DecorationImage(image: AssetImage('assets/png/background_car.jpeg'),fit: BoxFit.cover)),
            height: height(context),
            width: width(context),
            padding: EdgeInsets.only(left: 5.w, right: 5.w,top: 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20.h),
                Text('Вход',style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
                SizedBox(height: 4.h,),
                Container(height: 6.h,decoration: text_field_boxdecoration,child: TextFormField(
                  controller: emailController
                  ,decoration: invisible_input_decoration('Логин или номер телефона'),)), 
                SizedBox(height: 2.h,),
                Container(height: 6.h,decoration: text_field_boxdecoration,child: TextFormField(
                  controller: passwordController,
                  decoration: invisible_input_decoration('пароль'),)),
                SizedBox(height: 3.h,),
                Container(
                  width: 100.w,
                  decoration: button_black_decoration,
                  child: TextButton(onPressed: (){
                    auth();
                  }, child: Text('Войти', style: Theme.of(context).textTheme.labelMedium,)),
                ),
                SizedBox(height: 2.h,),
                Container(
                  height: 6.h,
                  width: 60.w,
                  decoration: button_grey_decoration,
                  child: TextButton(onPressed: (){
                    AutoRouter.of(context).push(const RegistrationRoute());
                  }, child: Text('Регистрация',style: Theme.of(context).textTheme.titleMedium,)),
                )
              ],
            ),
          ),
        ),
    );
  }
}