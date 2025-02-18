import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neopop/neopop.dart';
import 'package:solo_music/app/modules/screen_verify_mobile_no_module/screen_verify_mobile_no_controller.dart';

class ScreenVerifyMobileNoPage extends GetView<ScreenVerifyMobileNoController> {
  const ScreenVerifyMobileNoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0.0,),
      body: const Column(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: NeoPopTiltedButton(
          onTapUp: () {},
            decoration: const NeoPopTiltedButtonDecoration(
              shadowColor: Colors.white,
              showShimmer: true,
              color: Colors.yellow
            ),
            child: Wrap(
              spacing: 10.0,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  "Next",
                  style: Get.textTheme.bodyMedium!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                const Icon(Icons.arrow_forward_outlined, color: Colors.black, size: 20.0,),
              ],

            )
        ),
      ),
    );
  }
}
