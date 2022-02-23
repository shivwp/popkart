import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/select_date/presentation/ui/pages/select_date_screen.dart';
import 'package:popkart/features/settings_features/notifications/presentation/ui/pages/notifications_screen.dart';

class GroceryListCreation extends StatefulWidget {
  const GroceryListCreation({Key? key}) : super(key: key);

  @override
  _GroceryListCreationState createState() => _GroceryListCreationState();
}

class _GroceryListCreationState extends State<GroceryListCreation> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _nameEditingController = TextEditingController();
  late AutovalidateMode autovalidateMode;
  bool isChecked = false;

  String _dropDownPurpose = "Person name";
  List<String> personName = <String>[
    "Sara Williem",
    "Pitter Williem",
    "Nora Williem",
    "Laiza Williem",
  ];
  var selectedPerson;
  List<String> personGmail = <String>[
    "sara@gmail.com",
    "pitter@gmail.com",
    "nora@gmail.com",
    "laiza@gmail.com",
  ];
  List<String> image = <String>[
    "assets/images/peter1.png",
    "assets/images/ragnar1@gmail.com",
    "assets/images/ragnar1@gmail.com",
    "assets/images/ragnar1@gmail.com",
  ];

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
      return PopKartAppColor.black;
    }

    TextStyle labelstyle = TextStyle(
      color: PopKartAppColor.black,
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
    );
    TextStyle hintStyle = TextStyle(
      color: PopKartAppColor.grey,
      fontSize: 18.0,
    );
    return Scaffold(
      backgroundColor: PopKartAppColor.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: PopKartAppColor.appbar,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
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
          Badge(
              position: BadgePosition.topEnd(top: 16, end: 14),
              badgeColor: PopKartAppColor.greenBlue,
              badgeContent: null,
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => NotificationsPage(),
                        ));
                  },
                  icon: Icon(Icons.notifications))),
        ],
      ),
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              "Grocery List Creation",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Text(
                "Grocery List Name",
                style: labelstyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 60.0),
              child: TextFormField(
                cursorColor: Colors.grey,
                style: TextStyle(color: Colors.white),
                controller: _nameEditingController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter email';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  hintText: "Name",
                  hintStyle: hintStyle,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Text(
                "Select People",
                style: labelstyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: DropdownButton(
                underline: SizedBox(),
                hint: _dropDownPurpose == null
                    ? Text('Dropdown')
                    : Text(
                        _dropDownPurpose,
                        style: TextStyle(color: Color(0xff003893)),
                      ),
                isExpanded: true,
                iconSize: 30.0,
                style: TextStyle(color: Color(0xff003893)),
                items: [
                  "Sara Williem",
                  "Pitter Williem",
                  "Nora Williem",
                ].map(
                  (val) {
                    return DropdownMenuItem<String>(
                        value: val,
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          separatorBuilder: (context, index) {
                            return Container();
                          },
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              leading: Container(
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  "assets/images/person.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              title: Text(val),
                              trailing: Checkbox(
                                checkColor: PopKartAppColor.darkBlue,
                                fillColor:
                                    MaterialStateProperty.resolveWith(getColor),
                                value: isChecked,
                                shape: CircleBorder(),
                                activeColor: PopKartAppColor.appbar,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                            );
                          },
                        ));
                  },
                ).toList(),
                onChanged: (val) {
                  setState(
                    () {
                      _dropDownPurpose = val.toString();
                    },
                  );
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "Store Name",
                    style: labelstyle,
                  ),
                  TextSpan(
                    text: "(Optional)",
                    style: hintStyle,
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 60.0),
              child: TextFormField(
                cursorColor: Colors.grey,
                style: TextStyle(color: Colors.white),
                controller: _nameEditingController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter email';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  hintText: "Whole Foods etc",
                  hintStyle: hintStyle,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
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
      bottomNavigationBar: Image.asset("assets/images/banner_ad.png"),
    );
  }

  void _validateInputs() {
    if (_formKey.currentState!.validate()) {
      // If all data are correct then save data to the variables
      _formKey.currentState!.save();
      Navigator.push(
          context, MaterialPageRoute(builder: (ctx) => SelectDatePage()));
    } else {
      // If all data are not valid then start auto validation
      setState(() {
        autovalidateMode = AutovalidateMode.onUserInteraction;
      });
    }
  }
}
