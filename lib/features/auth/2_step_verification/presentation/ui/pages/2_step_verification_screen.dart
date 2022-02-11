import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';

class TwoStepVerificationPage extends StatefulWidget {
  const TwoStepVerificationPage({Key? key}) : super(key: key);

  @override
  _TwoStepVerificationPageState createState() =>
      _TwoStepVerificationPageState();
}

class _TwoStepVerificationPageState extends State<TwoStepVerificationPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late AutovalidateMode autovalidateMode;

  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();

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
                "2 Step Verification",
                style: resetPasswordStyle,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              "A 6 digit verification code\n was just send to ******@gmail.com",
              textAlign: TextAlign.center,
              style: TextStyle(color: PopKartAppColor.white, fontSize: 14.0),
            ),
            SizedBox(height: 80.0),
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
            SizedBox(height: 50.0),
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
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  _validateInputs();
                },
                child: Text("Continue"),
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
    } else {
      // If all data are not valid then start auto validation
      setState(() {
        autovalidateMode = AutovalidateMode.onUserInteraction;
      });
    }
  }
}
