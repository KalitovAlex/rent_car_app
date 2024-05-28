import 'package:auto_route/auto_route.dart';
import 'package:rent_car_app/core/routes.gr.dart';
@AutoRouterConfig()
class AppRouter extends $AppRouter {

 @override
 List<AutoRoute> get routes => [
  AutoRoute(page: AuthorizaitonRoute.page, path: '/'),
  AutoRoute(page: RegistrationRoute.page),
  AutoRoute(page: HomeRoute.page, ),
  AutoRoute(page: ChangeDocumentInfo.page,)
 ];
}