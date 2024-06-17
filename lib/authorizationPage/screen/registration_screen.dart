import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_car_app/authorizationPage/bloc/registration/registration_bloc.dart';
import 'package:rent_car_app/core/globals.dart';
import 'package:rent_car_app/core/routes.gr.dart';
import 'package:rent_car_app/helper/adaptive_helper.dart';
import 'package:rent_car_app/theme/style/container_form_styles.dart';
import 'package:rent_car_app/theme/style/text_form_styles.dart';
import 'package:rent_car_app/widget/loading_circle.dart';
import 'package:rent_car_app/widget/snack_bar.dart';
import 'package:sizer/sizer.dart';

@RoutePage()
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController userLogin = TextEditingController();
  TextEditingController userName = TextEditingController();
  TextEditingController userNumber = TextEditingController();
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPassword = TextEditingController();
  TextEditingController userSecondPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final bloccommand = BlocProvider.of<RegistrationBloc>(context);
      return BlocConsumer<RegistrationBloc, RegistrationState>(
        listener: (BuildContext context, RegistrationState state) { 
          if(state is RegistrationLoading){
            showLoadingCircle(context);
          }
          if(state is RegistrationLoaded){
            Navigator.of(context).pop();
            AutoRouter.of(context).push(const AuthorizaitonRoute());
          }
          if(state is RegistrationFailure){
            Navigator.of(context).pop();
            talker.error('Error');
          }
         },
        builder: (context, state) {
          return Scaffold(
            body: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/png/background_car.jpeg'),
                      fit: BoxFit.cover)),
              padding: mobilePadding(context),
              width: width(context),
              height: height(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'Регистрация',
                    style: Theme.of(context).textTheme.labelLarge,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Container(
                      height: 6.h,
                      decoration: text_field_boxdecoration,
                      child: TextFormField(
                        controller: userLogin,
                        decoration: invisible_input_decoration('Введите логин'),
                      )),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                      height: 6.h,
                      decoration: text_field_boxdecoration,
                      child: TextFormField(
                        controller: userName,
                        decoration: invisible_input_decoration('Введите ФИО'),
                      )),
                  SizedBox(
                    height: 4.h,
                  ),
                  Container(
                      height: 6.h,
                      decoration: text_field_boxdecoration,
                      child: TextFormField(
                        controller: userNumber,
                        decoration: invisible_input_decoration(
                            'Введите номер телефона'),
                      )),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                      height: 6.h,
                      decoration: text_field_boxdecoration,
                      child: TextFormField(
                        controller: userEmail,
                        decoration: invisible_input_decoration('Введите почту'),
                      )),
                  SizedBox(
                    height: 4.h,
                  ),
                  Container(
                      height: 6.h,
                      decoration: text_field_boxdecoration,
                      child: TextFormField(
                        controller: userPassword,
                        decoration:
                            invisible_input_decoration('Введите пароль'),
                      )),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                      height: 6.h,
                      decoration: text_field_boxdecoration,
                      child: TextFormField(
                        controller: userSecondPassword,
                        decoration: invisible_input_decoration(
                            'Введите повторно пароль'),
                      )),
                  SizedBox(
                    height: 4.h,
                  ),
                  Container(
                    height: 6.h,
                    width: 80.w,
                    decoration: button_grey_decoration,
                    child: TextButton(
                        onPressed: () {
                          if (userPassword.text == userSecondPassword.text) {
                            bloccommand.add(RegistrationEvent(phone_number: userNumber.text, user_name: userName.text, user_login: userLogin.text, email: userEmail.text, password: userPassword.text));
                          } else {
                            showSnackBar(context, 'Введите одинаковые пароли');
                          }
                        },
                        child: Text(
                          'Зарегистрироваться',
                          style: Theme.of(context).textTheme.titleMedium,
                        )),
                  )
                ],
              ),
            ),
          );
        },
      );
  }
}
