import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/auth/reset_password/presentation/ui/pages/reset_password_controller.dart';
import 'package:popkart/features/auth/sign_in/presentation/ui/pages/sign_in_screen.dart';
import 'package:popkart/features/auth/sign_up/presentation/ui/pages/sign_up_screen.dart';

import '../../../../../../core/utils/globals.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late AutovalidateMode autovalidateMode;
  late bool _newPasswordVisible;
  late bool _confirmNewPasswordVisible;
  TextEditingController _newPasswordEditingController = TextEditingController();
  TextEditingController _confirmNewPasswordEditingController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    _newPasswordVisible = true;
    _confirmNewPasswordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(
      color: PopKartAppColor.white,
      fontSize: 17.0,
    );
    TextStyle resetPasswordStyle = TextStyle(
        color: PopKartAppColor.white,
        fontSize: 26.0,
        fontWeight: FontWeight.w600);
    Get.put(getIt<ResetPasswordController>());
    return GetBuilder<ResetPasswordController>(builder: (controller) {
      return Scaffold(
        backgroundColor: PopKartAppColor.lightBlue,
        appBar: AppBar(
          backgroundColor: PopKartAppColor.lightBlue,
          elevation: 0.0,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 6.5,
              ),
              Center(
                child: Text(
                  "Reset Password",
                  style: resetPasswordStyle,
                ),
              ),
              SizedBox(height: 10.0),
              Center(
                child: Text(
                  "What would you like your new\n password to be?",
                  style:
                      TextStyle(color: PopKartAppColor.white, fontSize: 14.0),
                ),
              ),
              SizedBox(height: 40.0),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Text(
                  "New Password",
                  style: style,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 25.0),
                child: TextFormField(
                  obscureText: _newPasswordVisible,
                  cursorColor: PopKartAppColor.white,
                  style: TextStyle(color: PopKartAppColor.white),
                  controller: _newPasswordEditingController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please new enter password';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: PopKartAppColor.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: PopKartAppColor.white),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _newPasswordVisible
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: PopKartAppColor.white,
                      ),
                      onPressed: () {
                        setState(() {
                          _newPasswordVisible = !_newPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Text(
                  "Confirm New Password",
                  style: style,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 25.0),
                child: TextFormField(
                  obscureText: _confirmNewPasswordVisible,
                  cursorColor: PopKartAppColor.white,
                  style: TextStyle(color: PopKartAppColor.white),
                  controller: _confirmNewPasswordEditingController,
                  validator: (val) {
                    if (val!.isEmpty) return 'Please enter confirm password';
                    if (val != _newPasswordEditingController.text)
                      return 'Password don\'t match';
                    return null;
                  },
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: PopKartAppColor.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: PopKartAppColor.white),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _confirmNewPasswordVisible
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: PopKartAppColor.white,
                      ),
                      onPressed: () {
                        setState(() {
                          _confirmNewPasswordVisible =
                              !_confirmNewPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // If all data are correct then save data to the variables
                      _formKey.currentState!.save();
                     controller.recoverPassword(_confirmNewPasswordEditingController.text);
                    } else {
                      // If all data are not valid then start auto validation
                      setState(() {
                        autovalidateMode = AutovalidateMode.onUserInteraction;
                      });
                    }
                  },
                  child: Text("Save Changes"),
                  style: ElevatedButton.styleFrom(
                    elevation: 2.0,
                    shape: StadiumBorder(),
                    padding: EdgeInsets.all(18),
                    primary: PopKartAppColor.greenBlue,
                    // <-- Button color
                    onPrimary: PopKartAppColor.black, // <-- Splash color
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
