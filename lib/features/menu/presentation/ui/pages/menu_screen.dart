import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/menu_my_lists/presentation/ui/pages/my_lists_screen.dart';
import 'package:popkart/features/menu_shared_lists/presentation/ui/pages/shared_lists_screen.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: PopKartAppColor.appbar,
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
            Badge(
                position: BadgePosition.topEnd(top: 16, end: 14),
                badgeColor: PopKartAppColor.greenBlue,
                badgeContent: null,
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.notifications))),
          ],
          bottom: TabBar(
            labelColor: PopKartAppColor.darkBlue,
            unselectedLabelColor: PopKartAppColor.white,
            labelStyle: TextStyle(fontSize: 17.0),
            indicator: UnderlineTabIndicator(
              borderSide:
                  BorderSide(width: 3.0, color: PopKartAppColor.darkBlue),
            ),
            indicatorColor: PopKartAppColor.darkBlue,
            tabs: [
              Tab(text: "My Lists"),
              Tab(text: "Shared Lists"),
              Tab(text: "Favorites"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MyListsPage(),
            SharedListsPage(),
            Center(
              child: Text("Favorites"),
            ),
          ],
        ),
      ),
    );
  }
}
