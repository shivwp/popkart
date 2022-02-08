import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:popkart/core/constants/app_colors.dart';

class CreateProfilePage extends StatefulWidget {
  const CreateProfilePage({Key? key}) : super(key: key);

  @override
  _CreateProfilePageState createState() => _CreateProfilePageState();
}

class _CreateProfilePageState extends State<CreateProfilePage> {
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
      body: ListView(
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
                                    MediaQuery.of(context).size.height * 0.100),
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
                "Upload Profile Picture",
                style: TextStyle(
                  color: PopKartAppColor.white,
                ),
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
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40),
            child: TextFormField(
              initialValue: "John Doe",
              style: TextStyle(
                color: PopKartAppColor.white,
                fontSize: 18,
              ),
              decoration: InputDecoration(
                focusColor: Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              //  Navigator.push(context, MaterialPageRoute(builder: (ctx)=>BottomNavigation()));
            },
            child: Container(
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(20),
              child: Center(
                  child: Text(
                "Continue",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
              decoration: BoxDecoration(
                color: PopKartAppColor.greenBlue,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          )
        ],
      ),
    );
  }
}
