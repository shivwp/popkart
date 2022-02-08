import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';

class YourFriendsPage extends StatefulWidget {
  const YourFriendsPage({Key? key}) : super(key: key);

  @override
  _YourFriendsPageState createState() => _YourFriendsPageState();
}

class _YourFriendsPageState extends State<YourFriendsPage> {
  List name = [
    "Sara Richmond",
    "Liza Richmond",
    "Allen Walker",
    "Sara Richmond",
    "Liza Richmond",
    "Sara Richmond",
    "Liza Richmond",
    "Allen Walker",
    "Sara Richmond",
    "Liza Richmond",
    "Sara Richmond",
    "Liza Richmond",
    "Allen Walker",
    "Sara Richmond",
    "Liza Richmond",
    "Sara Richmond",
    "Liza Richmond",
    "Allen Walker",
    "Sara Richmond",
    "Liza Richmond",
  ];

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
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 16.0),
        children: [
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Text(
              "Your Friends",
              style: TextStyle(fontSize: 17.0, color: PopKartAppColor.black),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return Container(
                  height: 10.0,
                );
              },
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      "assets/images/person.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(name[index]),
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: TextButton(
        onPressed: () {},
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Text('Add Friends'),
            new Icon(
              Icons.add,
              size: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
