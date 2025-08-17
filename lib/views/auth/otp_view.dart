import 'package:client/common_widget/round_button.dart';
import 'package:client/const/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: media * 0.06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 80.0),

            /// Title
            Text(
              'We have sent an OTP \nto your Mobile',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: AColor.primaryText,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 25.0),

            /// Subtitle
            Text(
              'Please check your mobile number 6005****15\ncontinue to reset your password',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w500,
                color: AColor.primaryText,
              ),
            ),
            const SizedBox(height: 30.0),

            /// OTP Field
            SizedBox(
              height: 68.0,
              child: OtpPinField(
                key: _otpPinFieldController,
                autoFillEnable: true,
                textInputAction: TextInputAction.done,
                onSubmit: (text) {
                  debugPrint('Entered pin is $text');
                  FocusScope.of(context).unfocus();
                },
                onChange: (text) {
                  debugPrint('Changed OTP: $text');
                },
                onCodeChanged: (code) {
                  debugPrint('Code changed: $code');
                },
                otpPinFieldStyle: OtpPinFieldStyle(
                  showHintText: true,
                  defaultFieldBorderColor: AColor.textfield,
                  defaultFieldBackgroundColor: AColor.textfield,
                  activeFieldBorderColor: Colors.transparent,
                  filledFieldBorderColor: Colors.transparent,
                  fieldBorderWidth: 3,
                ),
                maxLength: 4,
                showCursor: true,
                cursorColor: Colors.indigo,
                cursorWidth: 3,
                mainAxisAlignment: MainAxisAlignment.center,
                otpPinFieldDecoration:
                    OtpPinFieldDecoration.defaultPinBoxDecoration,
              ),
            ),

            const SizedBox(height: 30),

            /// Clear OTP button
            ElevatedButton(
              onPressed: () {
                _otpPinFieldController.currentState?.clearOtp();
              },
              child: const Text("Clear OTP"),
            ),

            const SizedBox(height: 15),

            /// RoundButton (Your custom button)
            RoundButton(
              text: "Next",
              onPressed: () {
                FocusScope.of(context).unfocus();
                // Here you can validate OTP and navigate
                debugPrint("Next button clicked");
              },
            ),
          ],
        ),
      ),
    );
  }
}
