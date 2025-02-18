import 'package:solo_music/app/modules/screen_verify_mobile_no_module/screen_verify_mobile_no_controller.dart';
import 'package:get/get.dart';

class ScreenVerifyMobileNoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScreenVerifyMobileNoController());
  }
}