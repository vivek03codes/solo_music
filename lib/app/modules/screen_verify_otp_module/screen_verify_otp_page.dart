import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:neopop/widgets/buttons/neopop_tilted_button/neopop_tilted_button.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:solo_music/app/modules/screen_verify_otp_module/screen_verify_otp_controller.dart';

class ScreenVerifyOtpPage extends GetView<ScreenVerifyOtpController> {
  const ScreenVerifyOtpPage({super.key});

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
            onTapUp: () {},
            decoration: const NeoPopTiltedButtonDecoration(
                shadowColor: Colors.white,
                showShimmer: true,
                color: Colors.yellow
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 140.0),
              child: Text(
                "Verify",
                style: Get.textTheme.bodyMedium!.copyWith(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                ),
              ),
            )
        ),
      ),
    );
  }

  Widget _body() {
    return ListView(
      padding: const EdgeInsets.all(20.0),
      children: [
        Text(
          "Enter OTP",
          style: Get.textTheme.bodyMedium!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20.0
          ),
        ),
        Text(
          "Enter the otp we have sent to your mobile number 1234567890",
          style: Get.textTheme.bodyMedium!.copyWith(
              color: Colors.white,
              fontSize: 14.0
          ),
        ),
        const SizedBox(height: 20.0,),
        PinFieldAutoFill(
          codeLength: 4,
          enabled: true,
          enableInteractiveSelection: true,
          keyboardType: TextInputType.number,
          cursor: Cursor(
            color: Colors.white,
              height: 40.0,
              width: 3.0,
              enabled: true,
              radius: const Radius.circular(8.0)),
          decoration: BoxLooseDecoration(
            gapSpace: 30.0,
            strokeWidth: 1.6,
            textStyle: Get.textTheme.bodyMedium!.copyWith(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold),
            strokeColorBuilder: PinListenColorBuilder(
                Colors.white, Colors.white),
            // colorBuilder: FixedColorBuilder(Colors.black.withOpacity(0.3)),
          ),
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly
          ],
          onCodeSubmitted: (code) {},
          onCodeChanged: (code) {
            if (code!.length == 4) {
              FocusScope.of(Get.context!)
                  .requestFocus(FocusNode());
            }
          },
        ),
      ],
    );
  }
}
