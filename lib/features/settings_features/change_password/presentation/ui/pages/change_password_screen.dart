import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/settings/presentation/ui/pages/settings_screen.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late AutovalidateMode autovalidateMode;
  late bool _currentPasswordVisible;
  late bool _newPasswordVisible;
  late bool _confirmNewPasswordVisible;
  TextEditingController _currentPasswordEditingController =
      TextEditingController();
  TextEditingController _newPasswordEditingController = TextEditingController();
  TextEditingController _confirmNewPasswordEditingController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    _currentPasswordVisible = true;
    _newPasswordVisible = true;
    _confirmNewPasswordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(
      color: PopKartAppColor.black,
      fontSize: 17.0,
    );
    TextStyle resetPasswordStyle = TextStyle(
        color: PopKartAppColor.black,
        fontSize: 26.0,
        fontWeight: FontWeight.w600);
    return Scaffold(
      backgroundColor: PopKartAppColor.white,
      appBar: AppBar(
        backgroundColor: PopKartAppColor.appbar,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 25.0,
          ),
        ),
        centerTitle: false,
        titleSpacing: 0.0,
        title: Transform(
          // You can forcefully translate values left side using Transform
          transform: Matrix4.translationValues(-12.0, 0.0, 0.0),
          child: Image.asset(
            'assets/images/pop_kart_logo.png',
            height: 45,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => const SettingsPage(),
                  ),
                );
              },
              icon: Icon(Icons.settings))
        ],
      ),
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          children: [
            SizedBox(height: 25.0),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Settings",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xff003893),
                ),
              ),
            ),
            SizedBox(height: 60.0),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Text(
                "Current Password",
                style: style,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 25.0),
              child: TextFormField(
                obscureText: _currentPasswordVisible,
                cursorColor: PopKartAppColor.grey,
                style: TextStyle(color: PopKartAppColor.black),
                controller: _currentPasswordEditingController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please new enter password';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: PopKartAppColor.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: PopKartAppColor.grey),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _currentPasswordVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: PopKartAppColor.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _currentPasswordVisible = !_currentPasswordVisible;
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
                "New Password",
                style: style,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 25.0),
              child: TextFormField(
                obscureText: _newPasswordVisible,
                cursorColor: PopKartAppColor.grey,
                style: TextStyle(color: PopKartAppColor.black),
                controller: _newPasswordEditingController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please new enter password';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: PopKartAppColor.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: PopKartAppColor.grey),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _newPasswordVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: PopKartAppColor.grey,
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
                cursorColor: PopKartAppColor.grey,
                style: TextStyle(color: PopKartAppColor.black),
                controller: _confirmNewPasswordEditingController,
                validator: (val) {
                  if (val!.isEmpty) return 'Please enter confirm password';
                  if (val != _newPasswordEditingController.text)
                    return 'Password don\'t match';
                  return null;
                },
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: PopKartAppColor.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: PopKartAppColor.grey),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _confirmNewPasswordVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: PopKartAppColor.grey,
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
            SizedBox(height: 50.0),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  _validateInputs();
                },
                child: Text(
                  "Save Changes",
                  style: TextStyle(fontSize: 15.0),
                ),
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
  }

  void _validateInputs() {
    if (_formKey.currentState!.validate()) {
      // If all data are correct then save data to the variables
      _formKey.currentState!.save();
      /*  Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) {
            return SignInPage();
          }));*/
    } else {
      // If all data are not valid then start auto validation
      setState(() {
        autovalidateMode = AutovalidateMode.onUserInteraction;
      });
    }
  }
}
