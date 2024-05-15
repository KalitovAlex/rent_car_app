// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:rent_car_app/authorizationPage/auth_gate.dart' as _i1;
import 'package:rent_car_app/authorizationPage/screen/authorizaiton_screen.dart'
    as _i2;
import 'package:rent_car_app/authorizationPage/screen/registration_screen.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AuthGate.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthGate(),
      );
    },
    AuthorizaitonRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthorizaitonScreen(),
      );
    },
    RegistrationRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.RegistrationScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthGate]
class AuthGate extends _i4.PageRouteInfo<void> {
  const AuthGate({List<_i4.PageRouteInfo>? children})
      : super(
          AuthGate.name,
          initialChildren: children,
        );

  static const String name = 'AuthGate';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuthorizaitonScreen]
class AuthorizaitonRoute extends _i4.PageRouteInfo<void> {
  const AuthorizaitonRoute({List<_i4.PageRouteInfo>? children})
      : super(
          AuthorizaitonRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthorizaitonRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.RegistrationScreen]
class RegistrationRoute extends _i4.PageRouteInfo<void> {
  const RegistrationRoute({List<_i4.PageRouteInfo>? children})
      : super(
          RegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
