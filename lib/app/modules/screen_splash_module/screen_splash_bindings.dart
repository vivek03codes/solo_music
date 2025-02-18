import 'package:solo_music/app/modules/screen_splash_module/screen_splash_controller.dart';
import 'package:get/get.dart';

class ScreenSplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScreenSplashController());
  }
}