import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solo_music/app/modules/screen_splash_module/screen_splash_controller.dart';
/**
 * NPSTX Template
 * */

class ScreenSplashPage extends GetView<ScreenSplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ScreenSplash Page')),
      body: Container(
        child: Obx(()=>Container(child: Text(controller.obj),)),
      ),
    );
  }
}
