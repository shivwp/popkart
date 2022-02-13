import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';

class SharedMembersPage extends StatefulWidget {
  const SharedMembersPage({Key? key}) : super(key: key);

  @override
  _SharedMembersPageState createState() => _SharedMembersPageState();
}

class _SharedMembersPageState extends State<SharedMembersPage> {
  bool _permissionSwitch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: PopKartAppColor.appbar,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Image.asset(
          'assets/images/pop_kart_logo.png',
          height: 50,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 30.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shared members",
                    style:
                        TextStyle(fontSize: 17.0, color: PopKartAppColor.black),
                  ),
                  Text(
                    "Shared permission",
                    style:
                        TextStyle(fontSize: 14.0, color: PopKartAppColor.grey),
                  ),
                ]),
          ),
          SizedBox(height: 20.0),
          Container(
            child: ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return Container(
                  height: 10.0,
                );
              },
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/female.png",
                      height: 45.0,
                      width: 45.0,
                      fit: BoxFit.cover,
                    ),
                    title: Text("Justom Carter"),
                    trailing: CupertinoSwitch(
                      trackColor: PopKartAppColor.white,
                      activeColor: PopKartAppColor.lightBlue,
                      value: _permissionSwitch,
                      onChanged: (value) {
                        setState(() {
                          _permissionSwitch = value;
                        });
                      },
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
