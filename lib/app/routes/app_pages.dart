import '../../app/modules/screen_verify_otp_module/screen_verify_otp_page.dart';
import '../../app/modules/screen_verify_otp_module/screen_verify_otp_bindings.dart';
import 'package:solo_music/app/modules/screen_verify_mobile_no_module/screen_verify_mobile_no_page.dart';

import '../../app/modules/screen_splash_module/screen_splash_bindings.dart';
import '../../app/modules/screen_splash_module/screen_splash_page.dart';
import 'package:get/get.dart';

import '../modules/screen_verify_mobile_no_module/screen_verify_mobile_no_bindings.dart';
part './app_routes.dart';


abstract class AppPages {

  static const INITIAL = "/screen_splash";

  static final pages = [
    GetPage(
      name: Routes.SCREEN_SPLASH,
      page: () => ScreenSplashPage(),
      binding: ScreenSplashBinding(),
    ),
    GetPage(
      name: Routes.SCREEN_VERIFY_MOBILE_NO,
      page: () => ScreenVerifyMobileNoPage(),
      binding: ScreenVerifyMobileNoBinding(),
    ),
    GetPage(
      name: Routes.SCREEN_VERIFY_OTP,
      page: () => ScreenVerifyOtpPage(),
      binding: ScreenVerifyOtpBinding(),
    ),
  ];
}
