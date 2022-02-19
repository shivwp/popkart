import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/add_items/presentation/ui/pages/add_items_screen.dart';

class NoItemsPage extends StatefulWidget {
  const NoItemsPage({Key? key}) : super(key: key);

  @override
  _NoItemsPageState createState() => _NoItemsPageState();
}

class _NoItemsPageState extends State<NoItemsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PopKartAppColor.appbar,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, size: 25.0),
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
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
          child: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: PopKartAppColor.lightBlue),
            child: ListTile(
              leading: Container(
                height: 70,
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  "assets/images/person.png",
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                "Main Shopper Name",
                style: TextStyle(
                  fontSize: 17,
                  color: PopKartAppColor.white,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Text(
                  "Grocery List 1",
                  style: TextStyle(
                    fontSize: 12,
                    color: PopKartAppColor.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: PopKartAppColor.white,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.13,
              ),
              Text(
                "You have no items in your grocery list",
                style: TextStyle(
                  color: PopKartAppColor.grey,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.044,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 17.0),
                child: Image.asset(
                  'assets/images/cart_icon.png',
                  color: PopKartAppColor.grey.withOpacity(0.4),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Text(
                "Add Items",
                style: TextStyle(color: PopKartAppColor.black, fontSize: 17.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => AddItemsPage(),
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
                  padding: EdgeInsets.all(5.0),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
