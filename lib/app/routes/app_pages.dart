import '../../app/modules/screen_splash_module/screen_splash_bindings.dart';
import '../../app/modules/screen_splash_module/screen_splash_page.dart';
import 'package:get/get.dart';
part './app_routes.dart';
/**
 * NPSTX Template
 * */

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SCREEN_SPLASH,
      page: () => ScreenSplashPage(),
      binding: ScreenSplashBinding(),
    ),
  ];
}