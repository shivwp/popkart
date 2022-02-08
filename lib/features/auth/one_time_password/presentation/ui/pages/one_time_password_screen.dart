import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:popkart/core/constants/app_colors.dart';

class OneTimePasswordPage extends StatefulWidget {
  const OneTimePasswordPage({Key? key}) : super(key: key);

  @override
  _OneTimePasswordPageState createState() => _OneTimePasswordPageState();
}

class _OneTimePasswordPageState extends State<OneTimePasswordPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late AutovalidateMode autovalidateMode;
  late bool _newPasswordVisible;
  late bool _confirmNewPasswordVisible;
  TextEditingController _newPasswordEditingController = TextEditingController();

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
                "One Time Password.",
                style: resetPasswordStyle,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Please ener 6 digit verification\ncode send on your registered Email Address",
              textAlign: TextAlign.center,
              style: TextStyle(color: PopKartAppColor.white, fontSize: 14.0),
            ),
            SizedBox(height: 40.0),

              OTPTextField(
                // controller: otpController,
                length: 6,
                width: 20,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldWidth: 20,
                fieldStyle: FieldStyle.box,
                outlineBorderRadius: 10,
                style: TextStyle(fontSize: 17),
                onChanged: (pin) {
                  print("Changed: " + pin);
                },
                onCompleted: (pin) {
                  print("Completed: " + pin);
                }),
            SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  _validateInputs();
                },
                child: Text("Verify"),
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

  Widget otpBoxBuilder() {
    return Container(
      alignment: Alignment.center,
      height: 30,
      width: 30,
      child: TextField(
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 23, color: Colors.blue),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(border: InputBorder.none, counterText: ''),
        textAlign: TextAlign.center,
      ),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.blue, width: 3)),
    );
  }

  void _validateInputs() {
    if (_formKey.currentState!.validate()) {
      // If all data are correct then save data to the variables
      _formKey.currentState!.save();
    } else {
      // If all data are not valid then start auto validation
      setState(() {
        autovalidateMode = AutovalidateMode.onUserInteraction;
      });
    }
  }
}
