import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/settings_features/change_password/presentation/ui/pages/change_password_screen.dart';
import 'package:popkart/features/settings_features/edit_profile/presentation/ui/pages/edit_profile_screen.dart';
import 'package:popkart/features/settings_features/notifications/presentation/ui/pages/notifications_screen.dart';
import 'package:popkart/features/settings_features/privacy_policy/presentation/ui/pages/privacy_policy_screen.dart';
import 'package:popkart/features/settings_features/terms_conditions/presentation/ui/pages/terms_conditions_screen.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _permissionSwitch = true;

  @override
  Widget build(BuildContext context) {
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
        title: Image.asset(
          'assets/images/pop_kart_logo.png',
          height: 50,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: [
          SizedBox(height: 20.0),
          Text(
            "Settings",
            style: TextStyle(fontSize: 17.0),
          ),
          SizedBox(height: 30.0),
          Text(
            "Account",
            style: TextStyle(fontSize: 16.0, color: PopKartAppColor.grey),
          ),
          SizedBox(height: 15.0),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const EditProfilePage(),
                ),
              );
            },
            leading: Icon(
              Icons.person,
              size: 20.0,
            ),
            title: Text(
              "Edit Profile",
              style: TextStyle(fontSize: 15.0),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const ChangePasswordPage(),
                ),
              );
            },
            leading: Icon(
              Icons.lock,
              size: 20.0,
            ),
            title: Text(
              "Change Password",
              style: TextStyle(fontSize: 15.0),
            ),
          ),
          SizedBox(height: 15.0),
          Text(
            "Notifications",
            style: TextStyle(fontSize: 16.0, color: PopKartAppColor.grey),
          ),
          SizedBox(height: 10.0),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const NotificationsPage(),
                ),
              );
            },
            leading: Icon(
              Icons.notifications,
              size: 20.0,
            ),
            title: Text(
              "Notifications",
              style: TextStyle(fontSize: 15.0),
            ),
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
          SizedBox(height: 20.0),
          Text(
            "More",
            style: TextStyle(fontSize: 16.0, color: PopKartAppColor.grey),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const TermsConditionsPage(),
                ),
              );
            },
            leading: Icon(Icons.info, size: 20.0),
            title: Text(
              "Term & Conditions",
              style: TextStyle(fontSize: 15.0),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const PrivacyPolicyPage(),
                ),
              );
            },
            leading: Icon(Icons.info, size: 20.0),
            title: Text(
              "Privacy Policy",
              style: TextStyle(fontSize: 15.0),
            ),
          ),
        ],
      ),
      bottomSheet: ListTile(
        leading: Icon(
          Icons.logout,
          color: Colors.red,
          size: 20.0,
        ),
        title: Text(
          "Sign Out",
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
