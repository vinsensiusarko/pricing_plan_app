import 'package:get/get.dart';
import 'package:pricing_plan_app/app/core/middleware/subscription_middleware.dart';
import 'package:pricing_plan_app/app/modules/splash/controllers/splash_controller.dart';

import '../modules/free/bindings/free_binding.dart';
import '../modules/free/views/free_view.dart';
import '../modules/freemium/bindings/freemium_binding.dart';
import '../modules/freemium/views/freemium_view.dart';
import '../modules/homepage/bindings/homepage_binding.dart';
import '../modules/homepage/views/homepage_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/standard/bindings/standard_binding.dart';
import '../modules/standard/views/standard_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOMEPAGE,
      page: () => const HomepageView(),
      binding: HomepageBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.FREE,
      page: () => const FreeView(),
      binding: FreeBinding(),
      middlewares: [SubscriptionMiddleware(allowedRoles: [UserType.free])]
    ),
    GetPage(
      name: _Paths.FREEMIUM,
      page: () => const FreemiumView(),
      binding: FreemiumBinding(),
      middlewares: [SubscriptionMiddleware(allowedRoles: [UserType.freemium])]
    ),
    GetPage(
      name: _Paths.STANDARD,
      page: () => const StandardView(),
      binding: StandardBinding(),
      middlewares: [SubscriptionMiddleware(allowedRoles: [UserType.enterprise])]
    ),
  ];
}
