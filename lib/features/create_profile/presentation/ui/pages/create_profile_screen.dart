import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/home/presentation/ui/pages/bottom_navigation_screen.dart';

class CreateProfilePage extends StatefulWidget {
  const CreateProfilePage({Key? key}) : super(key: key);

  @override
  _CreateProfilePageState createState() => _CreateProfilePageState();
}

class _CreateProfilePageState extends State<CreateProfilePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late AutovalidateMode autovalidateMode;
  File? pickedImage;

  pickImage(ImageSource imageType) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageType);
      if (photo == null) return;
      final tempImage = File(photo.path);
      setState(() {
        pickedImage = tempImage;
      });

      Navigator.pop(context);
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PopKartAppColor.lightBlue,
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Text(
                  "Create Profile",
                  style: TextStyle(
                    color: PopKartAppColor.white,
                    fontSize: 26,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 58,
                      backgroundColor: PopKartAppColor.grey,
                      child: CircleAvatar(
                        backgroundColor: PopKartAppColor.white,
                        radius: 55,
                        child: pickedImage != null
                            ? Image.file(pickedImage!)
                            : Icon(
                                Icons.person_rounded,
                                size: 50,
                                color: PopKartAppColor.grey,
                              ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        width: MediaQuery.of(context).size.height * 0.045,
                        height: MediaQuery.of(context).size.height * 0.045,
                        decoration: BoxDecoration(
                          color: PopKartAppColor.white,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: PopKartAppColor.border,
                            width: 4,
                          ),
                        ),
                        child: Icon(
                          Icons.add,
                          color: PopKartAppColor.border,
                        ),
                      ),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            title: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.height *
                                          0.100),
                              child: Text(
                                "Add Photo",
                                style: TextStyle(
                                  color: PopKartAppColor.dBlue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            // content: Text("You have raised a Alert Dialog Box"),
                            actions: <Widget>[
                              TextButton(
                                  onPressed: () {
                                    pickImage(ImageSource.camera);
                                    // Navigator.of(ctx).pop();
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Take Photo",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.camera_alt_outlined,
                                        color: Colors.black,
                                      ),
                                    ],
                                  )
                                  // Text("okay"),
                                  ),
                              Divider(
                                color: Colors.grey,
                              ),
                              TextButton(
                                  onPressed: () {
                                    pickImage(ImageSource.gallery);
                                    // Navigator.of(ctx).pop();
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Choose from gallery",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.photo,
                                        color: Colors.black,
                                      ),
                                    ],
                                  )
                                  // Text("okay"),
                                  ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Cancel"),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text(
                  "Upload Profile Photo",
                  style:
                      TextStyle(color: PopKartAppColor.white, fontSize: 13.0),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, top: 12),
              child: Text(
                "Your Name",
                style: TextStyle(
                  color: PopKartAppColor.white,
                  fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50.0),
              child: TextFormField(
                cursorColor: PopKartAppColor.white,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter your name';
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
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
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
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return BottomNavigationPage(currentIndex: 2,);
      }));
    } else {
      // If all data are not valid then start auto validation
      setState(() {
        autovalidateMode = AutovalidateMode.onUserInteraction;
      });
    }
  }
}
