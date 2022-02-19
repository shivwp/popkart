import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/menu_food/presentation/ui/pages/food_screen.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 10.0),
          DefaultTabController(
            length: 5,
            initialIndex: 0,
            child: Column(
              children: <Widget>[
                TabBar(
                    labelColor: Colors.white,
                    indicatorColor: Colors.white,
                    unselectedLabelColor: Colors.black54,

                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: PopKartAppColor.lightBlue),
                    indicatorWeight: 1.0,
                    isScrollable: true,
                    tabs: [
                      Tab(text: "Mens"),
                      Tab(text: "Womens"),
                      Tab(text: "Furniture"),
                      Tab(text: "Food"),
                      Tab(text: "Electronics"),
                    ]),
                Container(
                  height: 600.0,
                  child: TabBarView(children: [
                    // Content of Timeline Tab
                    Center(child: Text("Mens Here")),
                    Center(child: Text("Womens Here")),
                    Center(child: Text("Furniture Here")),
                    FoodScreen(),
                    Center(child: Text("Electronics Here")),
                  ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
