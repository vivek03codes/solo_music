import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:neopop/neopop.dart';
import 'package:solo_music/app/modules/screen_verify_mobile_no_module/screen_verify_mobile_no_controller.dart';
import 'package:solo_music/app/routes/app_pages.dart';

class ScreenVerifyMobileNoPage extends GetView<ScreenVerifyMobileNoController> {
  const ScreenVerifyMobileNoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0.0,),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
            Color(0xFF070711), // Dark color
            Color(0xFF8631EE),
          ])
        ),
          child: _body()
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: NeoPopTiltedButton(
          onTapUp: () {
            Get.toNamed(Routes.SCREEN_VERIFY_OTP);
          },
            decoration: const NeoPopTiltedButtonDecoration(
              shadowColor: Colors.white,
              showShimmer: true,
              color: Colors.yellow
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 120.0),
              child: Text(
                "Continue",
                style: Get.textTheme.bodyMedium!.copyWith(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
        ),
      ),
    );
  }

  Widget _body() {
    return ListView(
      padding: const EdgeInsets.all(20.0),
      children: [
        Text(
          "Enter Mobile No.",
          style: Get.textTheme.bodyMedium!.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20.0
          ),
        ),
        Text(
          "Enter your mobile number to get an otp and continue your login process",
          style: Get.textTheme.bodyMedium!.copyWith(
              color: Colors.white,
              fontSize: 14.0
          ),
        ),
        const SizedBox(height: 20.0,),
        TextField(
          cursorColor: Colors.white,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly
          ],
          keyboardType: TextInputType.number,
          maxLength: 10,
          maxLines: 1,
          style: Get.textTheme.bodyMedium!.copyWith(
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.w600
          ),
          decoration: InputDecoration(
            border: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white)
            ),
            icon: Wrap(
              spacing: 10.0,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  "+91",
                  style: Get.textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
                Container(
                  height: 30.0,
                  width: 1.5,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white)
                  ),
                )
              ],
            ),
            hintText: "1234567890",
            hintStyle: Get.textTheme.bodyMedium!.copyWith(
                color: Colors.white,
                fontSize: 18.0,
            ),
          ),
        )
      ],
    );
  }
}
