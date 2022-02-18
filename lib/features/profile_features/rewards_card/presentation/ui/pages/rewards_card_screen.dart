import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/settings/presentation/ui/pages/settings_screen.dart';

class RewardsCardPage extends StatefulWidget {
  const RewardsCardPage({Key? key}) : super(key: key);

  @override
  _RewardsCardPageState createState() => _RewardsCardPageState();
}

class _RewardsCardPageState extends State<RewardsCardPage> {
  TextStyle textStyle = TextStyle(color: PopKartAppColor.black, fontSize: 17.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: PopKartAppColor.appbar,
        title: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back)),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Image.asset(
                'assets/images/pop_kart_logo.png',
                height: 50,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_rounded)),
          IconButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => SettingsPage(),
              ),
            );
          }, icon: Icon(Icons.settings))
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 16.0, right: 16.0),
        children: [
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Text(
              "Rewards card",
              style: TextStyle(fontSize: 17.0, color: PopKartAppColor.black),
            ),
          ),
          SizedBox(height: 20.0),
          Card(
            child: Container(
              color: Colors.grey.withOpacity(0.1),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                      child: Text(
                        "Card Number",
                        style: textStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                      child: TextFormField(
                        initialValue: "0000 0000 0000 0000",
                        cursorColor: Colors.grey.withOpacity(0.2),
                        style: TextStyle(color: Colors.black54),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.withOpacity(0.2)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.withOpacity(0.2)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                      child: Text(
                        "Security Code",
                        style: textStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                      child: TextFormField(
                        obscureText: true,
                        initialValue: "0000",
                        cursorColor: Colors.grey.withOpacity(0.2),
                        style: TextStyle(color: Colors.black54),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.withOpacity(0.2)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.withOpacity(0.2)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 2.7),
          TextButton(onPressed: () {}, child: Text("Skip")),
          ElevatedButton(
            onPressed: () {},
            child: Text("Add Card"),
            style: ElevatedButton.styleFrom(
              elevation: 2.0,
              shape: StadiumBorder(),
              padding: EdgeInsets.all(15),
              primary: PopKartAppColor.greenBlue,
              // <-- Button color
              onPrimary: PopKartAppColor.black, // <-- Splash color
            ),
          ),
        ],
      ),
    );
  }
}
