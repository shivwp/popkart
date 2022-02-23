import 'dart:async';

import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/core/widgets/gradient_container.dart';
import 'package:popkart/core/widgets/rounded_container.dart';
import 'package:popkart/features/auth/sign_in_sign_up/presentation/ui/sign_in_sign_up_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) {
      return SignInSignUpPage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PopKartAppColor.lightBlue,
        body: RoundedContainer(
          child: Center(
            child: Image.asset('assets/images/pop_kart_logo.png'),
          ),
        ));
  }
}
