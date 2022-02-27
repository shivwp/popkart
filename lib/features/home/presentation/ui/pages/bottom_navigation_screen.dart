import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/create_profile/presentation/ui/pages/create_profile_screen.dart';
import 'package:popkart/features/grocery_list/presentation/ui/pages/grocery_list_screen.dart';
import 'package:popkart/features/home/presentation/ui/pages/home_screen.dart';
import 'package:popkart/features/menu/presentation/ui/pages/menu_screen.dart';
import 'package:popkart/features/profile/presentation/ui/pages/profile_screen.dart';

class BottomNavigationPage extends StatefulWidget {
  int? currentIndex = 0;
   BottomNavigationPage({Key? key, this.currentIndex}) : super(key: key);

  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  final List<Widget> _children = [
    HomePage(),
    MenuPage(),
    ProfilePage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      widget.currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[widget.currentIndex!],
      bottomNavigationBar: Container(
        // height: 80,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: onTabTapped,
            currentIndex: widget.currentIndex!,
            selectedItemColor: PopKartAppColor.appbar,
            unselectedItemColor: Colors.grey,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            items: [
              BottomNavigationBarItem(
                icon: new Icon(
                  Icons.home,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: new Icon(
                  Icons.menu,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                ),
                label: "",
              ),
            ]),
      ),
    );
  }
}
