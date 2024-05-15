import 'package:auto_route/auto_route.dart';
import 'package:rent_car_app/core/routes.gr.dart';
@AutoRouterConfig()
class AppRouter extends $AppRouter {

 @override
 List<AutoRoute> get routes => [
  AutoRoute(page: AuthGate.page, path: '/'),
  AutoRoute(page: AuthorizaitonRoute.page),
  AutoRoute(page: RegistrationRoute.page)
 ];
}