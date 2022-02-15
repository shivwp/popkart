import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/auth/2_step_verification/presentation/ui/pages/2_step_verification_screen.dart';
import 'package:popkart/features/auth/sign_in/presentation/ui/pages/sign_in_screen.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late AutovalidateMode autovalidateMode;
  bool isChecked = false;
  late bool _passwordVisible;
  late bool _confirmPasswordVisible;
  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _passwordEditingController = TextEditingController();
  TextEditingController _confirmPasswordEditingController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
    _confirmPasswordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return PopKartAppColor.black;
      }
      return PopKartAppColor.white;
    }

    TextStyle style = TextStyle(
      color: PopKartAppColor.white,
      fontSize: 17.0,
    );
    TextStyle resetPasswordStyle = TextStyle(
        color: PopKartAppColor.white,
        fontSize: 26.0,
        fontWeight: FontWeight.w600);
    return Scaffold(
      backgroundColor: PopKartAppColor.lightBlue,
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 8.0,
            ),
            Image.asset(
              'assets/images/pop_kart_logo.png',
              height: 80.0,
              width: 130.0,
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
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                controller: _emailEditingController,
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
                obscureText: _passwordVisible,
                controller: _passwordEditingController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter password';
                  }
                  return null;
                },
                cursorColor: PopKartAppColor.white,
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
                      _passwordVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: PopKartAppColor.white,
                    ),
                    onPressed: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
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
                "Re-Enter Password",
                style: style,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 25.0),
              child: TextFormField(
                obscureText: _confirmPasswordVisible,
                controller: _confirmPasswordEditingController,
                cursorColor: PopKartAppColor.white,
                style: TextStyle(color: PopKartAppColor.white),
                validator: (val) {
                  if (val!.isEmpty) return 'Enter confirm password';
                  if (val != _passwordEditingController.text)
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
                      _confirmPasswordVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: PopKartAppColor.white,
                    ),
                    onPressed: () {
                      setState(() {
                        _confirmPasswordVisible = !_confirmPasswordVisible;
                      });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                children: [
                  Checkbox(
                    checkColor: PopKartAppColor.black,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    shape: CircleBorder(),
                    activeColor: PopKartAppColor.white,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text(
                    "I agree with Privacy Policy",
                    style: TextStyle(
                      color: PopKartAppColor.white,
                      fontSize: 14.0,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  _validateInputs();
                },
                child: Text("Sign up"),
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have an account? ",
                style: TextStyle(color: PopKartAppColor.white, fontSize: 14.0)),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => SignInPage(),
                  ),
                );
              },
              child: Text(
                "Sign In",
                style:
                    TextStyle(color: PopKartAppColor.greenBlue, fontSize: 14.0),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _validateInputs() {
    if (_formKey.currentState!.validate()) {
      // If all data are correct then save data to the variables
      _formKey.currentState!.save();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (ctx) => const TwoStepVerificationPage(),
        ),
      );
    } else {
      // If all data are not valid then start auto validation
      setState(() {
        autovalidateMode = AutovalidateMode.onUserInteraction;
      });
    }
  }
}
