import 'package:get/get.dart';
import 'package:solo_music/app/routes/app_pages.dart';

class ScreenSplashController extends GetxController{
  var appName = "Solo Music";

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {Get.offAllNamed(Routes.SCREEN_VERIFY_MOBILE_NO);});
  }
}
