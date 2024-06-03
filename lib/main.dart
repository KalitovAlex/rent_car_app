import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:rent_car_app/authorizationPage/bloc/authorization/auth_bloc.dart';
import 'package:rent_car_app/authorizationPage/bloc/registration/registration_bloc.dart';
import 'package:rent_car_app/authorizationPage/model/user.dart';
import 'package:rent_car_app/authorizationPage/repository/abstract_user_repository.dart';
import 'package:rent_car_app/authorizationPage/repository/user_repository.dart';
import 'package:rent_car_app/core/globals.dart';
import 'package:rent_car_app/core/routes.dart';
import 'package:rent_car_app/main/bloc/change_document_bloc.dart';
import 'package:rent_car_app/main/model/car/car.dart';
import 'package:rent_car_app/main/model/document.dart';
import 'package:rent_car_app/main/repository/abstract_document_repository.dart';
import 'package:rent_car_app/main/repository/car/abstract_car_repository.dart';
import 'package:rent_car_app/main/repository/car/car_repository.dart';
import 'package:rent_car_app/main/repository/document_repository.dart';
import 'package:rent_car_app/theme/theme.dart';
import 'package:sizer/sizer.dart';
import 'package:talker_bloc_logger/talker_bloc_logger_observer.dart';
import 'package:talker_bloc_logger/talker_bloc_logger_settings.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initDependencies();
  initSingletons();
  carRepository.getAllCar();
  runApp(const MyApp());
}

void initSingletons() {
  //Register objects in GetIt
  GetIt.I.registerLazySingleton(() => const User()); 
  GetIt.I.registerLazySingleton(() => Document());
  GetIt.I.registerLazySingleton(() => const Car());

  //Register repository in GetIt
  GetIt.I.registerLazySingleton<AbstractUserRepository>(() => UserRepository());
  GetIt.I.registerLazySingleton<AbstractDocumentRepository>(() => DocumentRepository());
  GetIt.I.registerLazySingleton<AbstractCarRepository>(() => CarRepository());
}
void initDependencies() {
GetIt.I.registerLazySingleton<Talker>(() => Talker());
final talker = TalkerFlutter.init();
    Dio().interceptors.add(
      TalkerDioLogger(
        talker: talker,
      ),
    );
  talker.info('App Started');
  Bloc.observer = TalkerBlocObserver(
      talker: talker,
      settings: const TalkerBlocLoggerSettings(
          printCreations: true,
          printClosings: true,
          printStateFullData: true,
          printChanges: true,
          printEventFullData: true));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc()),
        BlocProvider(create: (context) => RegistrationBloc()),
        BlocProvider(create: (_) => ChangeDocumentBloc())
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp.router(
            theme: theme,
            debugShowCheckedModeBanner: false,
            routerConfig: _appRouter.config(
                navigatorObservers: () =>
                    [TalkerRouteObserver(GetIt.I<Talker>())]),
          );
        },
      ),
    );
  }
}
