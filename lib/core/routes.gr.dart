// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:rent_car_app/authorizationPage/screen/authorizaiton_screen.dart'
    as _i1;
import 'package:rent_car_app/authorizationPage/screen/registration_screen.dart'
    as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    AuthorizaitonRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthorizaitonScreen(),
      );
    },
    RegistrationRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.RegistrationScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthorizaitonScreen]
class AuthorizaitonRoute extends _i3.PageRouteInfo<void> {
  const AuthorizaitonRoute({List<_i3.PageRouteInfo>? children})
      : super(
          AuthorizaitonRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthorizaitonRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.RegistrationScreen]
class RegistrationRoute extends _i3.PageRouteInfo<void> {
  const RegistrationRoute({List<_i3.PageRouteInfo>? children})
      : super(
          RegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
