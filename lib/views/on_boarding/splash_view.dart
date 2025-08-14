import 'package:client/views/auth/welcome_view.dart';
import 'package:flutter/material.dart';

class StartupView extends StatefulWidget {
  const StartupView({super.key});

  @override
  State<StartupView> createState() => _StartupViewState();
}

class _StartupViewState extends State<StartupView> {
  @override
  void initState() {
    super.initState();
    goWelcomePage();
  }

  void goWelcomePage() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WelcomeView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/splash_bg.png',
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/app_logo.png',
            width: media.width * 0.7,
            height: media.width * 0.7,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
