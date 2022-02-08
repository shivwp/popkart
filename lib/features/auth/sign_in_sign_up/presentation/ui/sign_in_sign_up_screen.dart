import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/auth/sign_in/presentation/ui/pages/sign_in_screen.dart';
import 'package:popkart/features/auth/sign_up/presentation/ui/pages/sign_up_screen.dart';

class SignInSignUpPage extends StatefulWidget {
  const SignInSignUpPage({Key? key}) : super(key: key);

  @override
  _SignInSignUpPageState createState() => _SignInSignUpPageState();
}

class _SignInSignUpPageState extends State<SignInSignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PopKartAppColor.lightBlue,
      body: Center(
        child: Image.asset('assets/images/pop_kart_logo.png'),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => SignInPage(),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(12),
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.06,
              child: Center(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: PopKartAppColor.black,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: PopKartAppColor.greenBlue,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => SignUpPage(),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(12),
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.06,
              child: Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: PopKartAppColor.dBlue,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: PopKartAppColor.white,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
