import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/grocery_list/presentation/ui/pages/grocery_list_screen.dart';
import 'package:popkart/features/grocery_list_creation/presentation/ui/pages/grocery_list_creation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: PopKartAppColor.appbar,
        title: Image.asset(
          'assets/images/pop_kart_logo.png',
          height: 50,
        ),
      ),
      backgroundColor: PopKartAppColor.white,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.23,
              ),
              Text(
                "You have no grocery lists at the moment",
                style: TextStyle(
                  color: PopKartAppColor.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => GroceryListPage(),
                      ),
                    );
                  },
                  child: Image.asset('assets/images/add_grocery_icon.png')),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Text(
                "Start Creating Grocery List",
                style: TextStyle(
                  color: PopKartAppColor.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => GroceryListCreation(),
                    ),
                  );
                },
                child: Container(
                  child: Icon(
                    Icons.add,
                    color: PopKartAppColor.white,
                  ),
                  decoration: BoxDecoration(
                    color: PopKartAppColor.appbar,
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(8),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
