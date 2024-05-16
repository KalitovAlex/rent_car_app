import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_car_app/authorizationPage/bloc/bloc/auth_bloc.dart';
import 'package:rent_car_app/authorizationPage/bloc/registration/bloc/registration_bloc.dart';
import 'package:rent_car_app/core/globals.dart';
import 'package:rent_car_app/core/routes.gr.dart';
import 'package:rent_car_app/helper/adaptive_helper.dart';
import 'package:rent_car_app/theme/style/container_form_styles.dart';
import 'package:rent_car_app/theme/style/text_form_styles.dart';
import 'package:rent_car_app/widget/loading_circle.dart';
import 'package:rent_car_app/widget/snack_bar.dart';
import 'package:sizer/sizer.dart';
part '../extension/registration_screen_extension.dart';

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
    return BlocProvider(
      create: (context) => RegistrationBloc(),
      child: BlocBuilder<RegistrationBloc, RegistrationState>(
        builder: (context, state) {
          if(state is RegistrationLoading){
            showLoadingCircle(context);
          }
          if(state is RegistrationLoaded){
            showSnackBar(context, "Вы успешно зарегестрировались");
            AutoRouter.of(context).push(const HomeRoute());
          }
          if(state is RegistrationFailure){
            showSnackBar(context, "Не удалось зарегестрироваться");
            talker.error('Registration failed');
          }
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
                            register();
                            bloccommand.add(RegistrationEvent());
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
      ),
    );
  }
}
