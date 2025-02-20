import 'package:solo_music/app/modules/screen_verify_otp_module/screen_verify_otp_controller.dart';
import 'package:get/get.dart';

class ScreenVerifyOtpBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScreenVerifyOtpController());
  }
}