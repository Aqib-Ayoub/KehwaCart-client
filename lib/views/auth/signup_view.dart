import 'package:client/common_widget/round_button.dart';
import 'package:client/common_widget/round_textfield.dart';
import 'package:client/const/color_extension.dart';
import 'package:client/views/auth/login_view.dart';
import 'package:flutter/material.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 70.0),
              Text(
                'Sign Up',
                style: TextStyle(
                  color: AColor.primaryText,
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                'Add your details to sign up',
                style: TextStyle(
                  color: AColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 30),
              RoundTextfield(hintText: 'Name'),
              SizedBox(height: 30),
              RoundTextfield(hintText: 'Email'),
              SizedBox(height: 30),
              RoundTextfield(hintText: 'Mobile No'),
              SizedBox(height: 30),
              RoundTextfield(hintText: 'Address'),
              SizedBox(height: 30),
              RoundTextfield(hintText: 'Password'),
              SizedBox(height: 30),
              RoundTextfield(hintText: 'Confirm Password'),
              SizedBox(height: 30),
              RoundButton(text: 'Sign Up', onPressed: () {}),
              SizedBox(height: 60.0),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Alredy have an account?',
                    style: TextStyle(
                      color: AColor.primaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginView()),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: AColor.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
