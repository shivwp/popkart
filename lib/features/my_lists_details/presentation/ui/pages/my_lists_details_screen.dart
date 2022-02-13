import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';

class MyListsDetailsPage extends StatefulWidget {
  const MyListsDetailsPage({Key? key}) : super(key: key);

  @override
  _MyListsDetailsPageState createState() => _MyListsDetailsPageState();
}

class _MyListsDetailsPageState extends State<MyListsDetailsPage> {
  List<String> name = <String>[
    "Arnolds Country White",
    "Nature's Own Honey Wheat"
  ];
  List<String> popUpName = [
    "Edit Item",
    "Delete",
  ];

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
          SizedBox(height: 20.0),
          Text(
            "Pickup Date and time",
            textAlign: TextAlign.center,
            style: TextStyle(color: PopKartAppColor.grey, fontSize: 13.0),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.calendar_today,
                size: 20.0,
              ),
              Text("Wednesday,19 Jan"),
              SizedBox(width: 10.0),
              Icon(
                Icons.access_time,
                size: 20.0,
              ),
              Text("11:30 AM"),
            ],
          ),
          SizedBox(height: 20.0),
          Container(
            child: ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return Container(height: 10.0);
              },
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Card(
                    child: Container(
                      height: 80.0,
                      color: PopKartAppColor.grey.withOpacity(0.05),
                      child: ListTile(
                        leading: Image.asset(
                          "assets/images/candy.png",
                          height: 70.0,
                          width: 70.0,
                          fit: BoxFit.cover,
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(name[index]),
                            PopupMenuButton(
                              offset: Offset(0, 0),
                              icon: Icon(
                                Icons.more_vert,
                                color: PopKartAppColor.grey,
                                size: 20.0,
                              ),
                              onSelected: (index) {},
                              itemBuilder: (BuildContext context) {
                                return List.generate(2, (index) {
                                  return PopupMenuItem(
                                    child: InkWell(
                                        onTap: () {},
                                        child: Text(popUpName[index])),
                                  );
                                });
                              },
                            )
                          ],
                        ),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("x1"),
                            Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Text(
                                "\$5.40",
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                      ),
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
