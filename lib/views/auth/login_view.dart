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
              RoundButton(text: 'Login', onPressed: () {}),
              SizedBox(height: 4.0),
              TextButton(
                onPressed: () {},
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
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Color(0xff367fc0),
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Login with Facebook',
                        style: TextStyle(
                          color: AColor.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 56,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xffdd4b39),
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Text(
                    'Login with Google',
                    style: TextStyle(
                      color: AColor.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an Account?'),
                  TextButton(
                    onPressed: () {},
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
