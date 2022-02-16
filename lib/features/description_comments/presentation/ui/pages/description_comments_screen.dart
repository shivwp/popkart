import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/comments/presentation/ui/pages/comments_screen.dart';
import 'package:popkart/features/description/presentation/ui/pages/description_screen.dart';

class DescriptionCommentsPage extends StatefulWidget {
  const DescriptionCommentsPage({Key? key}) : super(key: key);

  @override
  _DescriptionCommentsPageState createState() =>
      _DescriptionCommentsPageState();
}

class _DescriptionCommentsPageState extends State<DescriptionCommentsPage> {
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
            size: 30.0,
          ),
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
                  "assets/images/female.png",
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
      body: ListView(
        children: [
          SizedBox(height: 10.0),
          ListTile(
            trailing: Container(
              height: 50.0,
              width: 50.0,
              child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )),
                  )),
            ),
          ),
          Image.asset(
            "assets/images/candy.png",
            height: 120.0,
            width: 120.0,
            //  fit: BoxFit.cover,
          ),
          SizedBox(height: 20.0),
          Text(
            "Arnolds Country White",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15.0),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "x1  ",
                style: TextStyle(fontSize: 15.0),
              ),
              Text(
                "\$5.40",
                style: TextStyle(color: PopKartAppColor.green, fontSize: 20.0),
              ),
            ],
          ),
          DefaultTabController(
            length: 2,
            initialIndex: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TabBar(
                    labelColor: PopKartAppColor.darkBlue,
                    unselectedLabelColor: PopKartAppColor.grey,
                    labelStyle: TextStyle(fontSize: 17.0),
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(
                          width: 1.0, color: PopKartAppColor.darkBlue),
                    ),
                    indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: true,
                    tabs: [
                      Tab(text: "Description"),
                      Tab(text: "Comments"),
                    ]),
                Container(
                  height: 600.0,
                  child: TabBarView(children: [
                    // Content of Timeline Tab
                    DescriptionScreen(),
                    CommentsPage(),
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
