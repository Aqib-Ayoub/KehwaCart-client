import 'package:client/common_widget/round_button.dart';
import 'package:client/common_widget/round_textfield.dart';
import 'package:client/const/color_extension.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: media.height * 0.2),
              Text(
                'login',
                style: TextStyle(
                  color: AColor.primaryText,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                'Add your details to login',
                style: TextStyle(
                  color: AColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: media.width * 0.09),
              RoundTextfield(hintText: 'Email'),
              SizedBox(height: media.width * 0.06),
              RoundTextfield(
                hintText: 'Password',
                controller: password,
                obsecureText: true,
              ),

              SizedBox(height: media.width * 0.06),
              RoundButton(text: 'Login', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
