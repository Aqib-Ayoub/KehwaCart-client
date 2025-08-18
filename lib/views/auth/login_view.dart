import 'package:client/common_widget/round_button.dart';
import 'package:client/common_widget/round_icon_button.dart';
import 'package:client/common_widget/round_textfield.dart';
import 'package:client/const/color_extension.dart';
import 'package:client/views/auth/reset_password_view.dart';
import 'package:client/views/auth/signup_view.dart';
import 'package:client/views/on_boarding/on_boarding_view.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 70),
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
              SizedBox(height: 30),
              RoundTextfield(hintText: 'Email'),
              SizedBox(height: 25),
              RoundTextfield(
                hintText: 'Password',
                controller: password,
                obsecureText: true,
              ),

              SizedBox(height: 30),
              RoundButton(
                text: 'Login',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OnBoardingView()),
                  );
                },
              ),
              SizedBox(height: 4.0),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPasswordView(),
                    ),
                  );
                },
                child: Text(
                  'Forgot your password?',
                  style: TextStyle(
                    color: AColor.secondaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'or Login With',
                style: TextStyle(
                  color: AColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 30),
              RoundIconButton(
                onTap: () {},
                text: 'Login with Facebook',
                image: 'assets/images/facebook_logo.png',
                color: Color(0xff367fc0),
              ),
              SizedBox(height: 25),
              RoundIconButton(
                onTap: () {},
                image: 'assets/images/google_logo.png',
                text: 'Login with Google',
                color: Color(0xffdd4b39),
              ),
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an Account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupView()),
                      );
                    },
                    child: Text(
                      'Sign Up',
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
