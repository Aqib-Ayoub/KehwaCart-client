import 'package:client/common_widget/round_button.dart';
import 'package:client/common_widget/round_textfield.dart';
import 'package:client/const/color_extension.dart';
import 'package:flutter/material.dart';

class NewPasswordView extends StatefulWidget {
  const NewPasswordView({super.key});

  @override
  State<NewPasswordView> createState() => _NewPasswordViewState();
}

class _NewPasswordViewState extends State<NewPasswordView> {
  TextEditingController newPasword = TextEditingController();
  TextEditingController confirmPasword = TextEditingController();
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
              'New Password',
              style: TextStyle(
                color: AColor.primaryText,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Please enter your password',
              style: TextStyle(
                color: AColor.primaryText,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 30.0),
            RoundTextfield(hintText: 'New Password', controller: newPasword),
            SizedBox(height: 30.0),
            RoundTextfield(
              hintText: 'Confirm Password',
              controller: confirmPasword,
            ),
            SizedBox(height: 30.0),
            RoundButton(
              text: 'Next',
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => OtpView()),
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}
