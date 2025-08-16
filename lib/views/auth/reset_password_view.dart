import 'package:client/common_widget/round_button.dart';
import 'package:client/common_widget/round_textfield.dart';
import 'package:client/const/color_extension.dart';
import 'package:flutter/material.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  TextEditingController forgetEmail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: media.width * 0.07),
        child: Column(
          children: [
            SizedBox(height: 75.0),
            Text(
              'Reset Password',
              style: TextStyle(
                fontSize: 30,
                color: AColor.primaryText,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 10),
            Text(
              textAlign: TextAlign.center,
              'Please enter your email to recive a \nlink to create a new password via email',
              style: TextStyle(
                fontSize: 14,
                color: AColor.primaryText,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 30),
            RoundTextfield(hintText: 'Your Email', controller: forgetEmail),
            SizedBox(height: 30.0),
            RoundButton(text: 'Send', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
