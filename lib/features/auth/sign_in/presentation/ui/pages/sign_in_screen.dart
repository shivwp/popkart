import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/core/utils/globals.dart';
import 'package:popkart/features/auth/forgot_password/presentation/ui/pages/forgot_password_screen.dart';
import 'package:popkart/features/auth/reset_password/presentation/ui/pages/reset_password_screen.dart';
import 'package:popkart/features/auth/sign_up/presentation/ui/pages/sign_up_screen.dart';
import 'package:popkart/features/home/presentation/ui/pages/bottom_navigation_screen.dart';

import 'sign_in_controller.dart';

class SignInPage extends GetView<SignInController> {
  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(color: PopKartAppColor.white, fontSize: 17.0);
    Get.put(getIt<SignInController>());
    return GetBuilder<SignInController>(builder: (_) {
      return Scaffold(
        backgroundColor: PopKartAppColor.lightBlue,
        body: Form(
          key: controller.formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 6.5,
              ),
              Image.asset(
                'assets/images/pop_kart_logo.png',
                height: 80.0,
                width: 150.0,
              ),
              SizedBox(height: 40.0),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Text(
                  "Email",
                  style: style,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 25.0),
                child: TextFormField(
                  initialValue: "anil.shah@gmail.com",
                  // controller: controller.emailController,
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  validator: (value) {
                    Pattern pattern =
                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                    RegExp regExp = new RegExp(pattern.toString());
                    if (value!.isEmpty) {
                      return 'Please enter email';
                    } else if (!regExp.hasMatch(value)) {
                      return 'Enter valid email';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Text(
                  "Password",
                  style: style,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 25.0),
                child: TextFormField(
                  initialValue: "Govind@123",
                  obscureText: controller.passwordVisible,
                  //controller: controller.passwordController,
                  cursorColor: PopKartAppColor.white,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter password';
                    }
                    return null;
                  },
                  style: TextStyle(color: PopKartAppColor.white),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: PopKartAppColor.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: PopKartAppColor.white),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        controller.passwordVisible
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: PopKartAppColor.white,
                      ),
                      onPressed: () {
                        controller.passwordVisible =
                            !controller.passwordVisible;
                        controller.update();
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => ForgotPasswordPage(),
                      ),
                    );
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: PopKartAppColor.greenBlue, fontSize: 14.0),
                  )),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    _validateInputs();
                  },
                  child: Text("Sign in"),
                  style: ElevatedButton.styleFrom(
                    elevation: 2.0,
                    shape: StadiumBorder(),
                    padding: EdgeInsets.all(15),
                    primary: PopKartAppColor.greenBlue,
                    // <-- Button color
                    onPrimary: PopKartAppColor.black, // <-- Splash color
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don\'t have an account? ",
                  style:
                      TextStyle(color: PopKartAppColor.white, fontSize: 14.0)),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => SignUpPage(),
                    ),
                  );
                },
                child: Text(
                  "Sign up",
                  style: TextStyle(
                      color: PopKartAppColor.greenBlue, fontSize: 14.0),
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  void _validateInputs() {
    if (controller.formKey.currentState!.validate()) {
      // If all data are correct then save data to the variables
      controller.formKey.currentState!.save();
      controller.signIn();
    } else {
      // If all data are not valid then start auto validation
      controller.autovalidateMode = AutovalidateMode.onUserInteraction;
      controller.update();
    }
  }
}
