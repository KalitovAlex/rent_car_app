// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:rent_car_app/authorizationPage/screen/authorizaiton_screen.dart'
    as _i1;
import 'package:rent_car_app/authorizationPage/screen/registration_screen.dart'
    as _i4;
import 'package:rent_car_app/main/home_page.dart' as _i3;
import 'package:rent_car_app/main/model/car/car.dart' as _i8;
import 'package:rent_car_app/main/screen/change_document_info.dart' as _i2;
import 'package:rent_car_app/main/screen/test_drive_screen.dart' as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AuthorizaitonRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthorizaitonScreen(),
      );
    },
    ChangeDocumentInfo.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ChangeDocumentInfo(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    RegistrationRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.RegistrationScreen(),
      );
    },
    TestDriveRoute.name: (routeData) {
      final args = routeData.argsAs<TestDriveRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.TestDriveScreen(
          key: args.key,
          carList: args.carList,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthorizaitonScreen]
class AuthorizaitonRoute extends _i6.PageRouteInfo<void> {
  const AuthorizaitonRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AuthorizaitonRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthorizaitonRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ChangeDocumentInfo]
class ChangeDocumentInfo extends _i6.PageRouteInfo<void> {
  const ChangeDocumentInfo({List<_i6.PageRouteInfo>? children})
      : super(
          ChangeDocumentInfo.name,
          initialChildren: children,
        );

  static const String name = 'ChangeDocumentInfo';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.RegistrationScreen]
class RegistrationRoute extends _i6.PageRouteInfo<void> {
  const RegistrationRoute({List<_i6.PageRouteInfo>? children})
      : super(
          RegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.TestDriveScreen]
class TestDriveRoute extends _i6.PageRouteInfo<TestDriveRouteArgs> {
  TestDriveRoute({
    _i7.Key? key,
    required List<_i8.Car> carList,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          TestDriveRoute.name,
          args: TestDriveRouteArgs(
            key: key,
            carList: carList,
          ),
          initialChildren: children,
        );

  static const String name = 'TestDriveRoute';

  static const _i6.PageInfo<TestDriveRouteArgs> page =
      _i6.PageInfo<TestDriveRouteArgs>(name);
}

class TestDriveRouteArgs {
  const TestDriveRouteArgs({
    this.key,
    required this.carList,
  });

  final _i7.Key? key;

  final List<_i8.Car> carList;

  @override
  String toString() {
    return 'TestDriveRouteArgs{key: $key, carList: $carList}';
  }
}
