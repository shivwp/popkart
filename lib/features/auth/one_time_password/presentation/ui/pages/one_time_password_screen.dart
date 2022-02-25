import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/auth/reset_password/presentation/ui/pages/reset_password_screen.dart';

class OneTimePasswordPage extends StatefulWidget {
  const OneTimePasswordPage({Key? key}) : super(key: key);

  @override
  _OneTimePasswordPageState createState() => _OneTimePasswordPageState();
}

class _OneTimePasswordPageState extends State<OneTimePasswordPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late AutovalidateMode autovalidateMode;

  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();

  @override
  void initState() {
    super.initState();
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
              height: 40.0,
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
            SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                      color: PopKartAppColor.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: TextFormField(
                    controller: otp1Controller,
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () => FocusScope.of(context).nextFocus(),
                    style:
                        TextStyle(fontSize: 19.0, color: PopKartAppColor.black),
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(
                        border: InputBorder.none, counterText: ''),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                      color: PopKartAppColor.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: TextFormField(
                    controller: otp2Controller,
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () => FocusScope.of(context).nextFocus(),
                    style:
                        TextStyle(fontSize: 19.0, color: PopKartAppColor.black),
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(
                        border: InputBorder.none, counterText: ''),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                      color: PopKartAppColor.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: TextFormField(
                    controller: otp3Controller,
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () => FocusScope.of(context).nextFocus(),
                    style:
                        TextStyle(fontSize: 19.0, color: PopKartAppColor.black),
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(
                        border: InputBorder.none, counterText: ''),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                      color: PopKartAppColor.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: TextFormField(
                    controller: otp4Controller,
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () => FocusScope.of(context).nextFocus(),
                    style:
                        TextStyle(fontSize: 19.0, color: PopKartAppColor.black),
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(
                        border: InputBorder.none, counterText: ''),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                      color: PopKartAppColor.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: TextFormField(
                    controller: otp5Controller,
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () => FocusScope.of(context).nextFocus(),
                    style:
                        TextStyle(fontSize: 19.0, color: PopKartAppColor.black),
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(
                        border: InputBorder.none, counterText: ''),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                      color: PopKartAppColor.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: TextFormField(
                    controller: otp6Controller,
                    textInputAction: TextInputAction.done,
                    onEditingComplete: () => FocusScope.of(context).nextFocus(),
                    style:
                        TextStyle(fontSize: 19.0, color: PopKartAppColor.black),
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(
                        border: InputBorder.none, counterText: ''),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            /* OTPTextField(
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
                }),*/
            SizedBox(height: 50.0),
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
            SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("You received OTP within ",
                    style: TextStyle(
                        color: PopKartAppColor.white, fontSize: 14.0)),
                Text("159 ",
                    style: TextStyle(color: Colors.red, fontSize: 14.0)),
                Text("mins",
                    style: TextStyle(
                        color: PopKartAppColor.white, fontSize: 14.0)),
              ],
            ),
            SizedBox(height: 45.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don\'t receive a code? ",
                    style: TextStyle(
                        color: PopKartAppColor.white, fontSize: 14.0)),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Resend Code",
                      style: TextStyle(
                          color: PopKartAppColor.greenBlue, fontSize: 16.0),
                    ))
              ],
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
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (ctx) => ResetPasswordPage(),
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
