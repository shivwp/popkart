import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';

class GroceryListPage extends StatefulWidget {
  const GroceryListPage({Key? key}) : super(key: key);

  @override
  _GroceryListPageState createState() => _GroceryListPageState();
}

class _GroceryListPageState extends State<GroceryListPage> {
  @override
  Widget build(BuildContext context) {
    TextStyle nameStyle = TextStyle(fontSize: 15.0);
    TextStyle dateStyle = TextStyle(
      fontSize: 10,
      color: PopKartAppColor.grey,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      backgroundColor: PopKartAppColor.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: PopKartAppColor.appbar,
        title: Image.asset(
          'assets/images/pop_kart_logo.png',
          height: 50,
        ),
        actions: [
          InkWell(
            onTap: () {
              debugPrint("Add new grocery lists");
            },
            child: Container(
              margin: EdgeInsets.only(right: 20),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: PopKartAppColor.white,
              ),
              child: Icon(
                Icons.add,
                color: PopKartAppColor.appbar,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 20.0),
          Container(
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return Container(
                  height: 20.0,
                );
              },
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    Container(
                      height: 80.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        "assets/images/person.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Peter Walker", style: nameStyle),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.005,
                        ),
                        Text("Wednesday, 19 Jan ", style: dateStyle),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Container(
                          height: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            "assets/images/person.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
