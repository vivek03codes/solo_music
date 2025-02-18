import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solo_music/app/modules/screen_splash_module/screen_splash_controller.dart';

class ScreenSplashPage extends GetView<ScreenSplashController> {
  const ScreenSplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0.0,),
      body: Center(
        child: Text(controller.appName),
      ),
    );
  }
}
