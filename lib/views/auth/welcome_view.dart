import 'package:client/common_widget/round_button.dart';
import 'package:client/const/color_extension.dart';
import 'package:client/views/auth/login_view.dart';
import 'package:client/views/auth/signup_view.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                'assets/images/welcome_top_shape.png',
                width: media.width,
              ),
              Image.asset(
                'assets/images/app_logo.png',
                width: media.width * 0.78,
                height: media.width * 0.78,
                fit: BoxFit.contain,
              ),
              Positioned(
                top: 480,
                child: Text(
                  'FOOD DELIVERY',
                  style: TextStyle(color: AColor.primaryText),
                ),
              ),
            ],
          ),
          Text(
            textAlign: TextAlign.center,
            'Discover the best food over 1,000\nresturants and fast delivery to your\ndoorstep',
            style: TextStyle(
              color: AColor.primaryText,
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
            ),
          ),

          SizedBox(height: media.width * 0.1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: RoundButton(
              text: 'Login',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginView()),
                );
              },
            ),
          ),
          SizedBox(height: media.width * 0.08),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: RoundButton(
              text: 'Create an Account',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupView()),
                );
              },
              type: ButtonType.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
