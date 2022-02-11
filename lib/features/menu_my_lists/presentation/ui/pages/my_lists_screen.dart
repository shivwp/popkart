import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';

class MyListsPage extends StatefulWidget {
  const MyListsPage({Key? key}) : super(key: key);

  @override
  _MyListsPageState createState() => _MyListsPageState();
}

class _MyListsPageState extends State<MyListsPage> {
  List<String> name = <String>[
    "Piter Walker",
    "Alex Morgin",
    "Ragnar Richmond"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return Container(height: 10.0);
        },
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Card(
              child: Container(
                color: PopKartAppColor.grey.withOpacity(0.12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Image.asset(
                        "assets/images/female.png",
                        height: 45.0,
                        width: 45.0,
                        fit: BoxFit.cover,
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                name[index],
                                style: TextStyle(fontSize: 17.0),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 20.0,
                                    color: PopKartAppColor.grey,
                                  ))
                            ],
                          ),
                          Text(
                            "List Name",
                            style: TextStyle(
                                color: PopKartAppColor.black, fontSize: 15.0),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        "Shopping Date & Time",
                        style: TextStyle(
                            color: PopKartAppColor.grey, fontSize: 13.0),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            size: 17.0,
                          ),
                          Text("Wednesday,19 Jan"),
                          SizedBox(width: 10.0),
                          Icon(
                            Icons.access_time,
                            size: 17.0,
                          ),
                          Text("11:30 AM"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Container(
                        height: 80.0,
                        width: double.infinity,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return Container(
                              width: 20.0,
                            );
                          },
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            return Image.asset(
                              "assets/images/candy.png",
                              height: 50.0,
                              width: 50.0,
                            );
                          },
                        ),
                      ),
                    )
                    /*  Row(
                      children: [
                        Image.asset(
                          "assets/images/female.png",
                          height: 45.0,
                          width: 45.0,
                          fit: BoxFit.cover,
                        ),
                        Column(
                          children: [
                            Text(name[index]),
                            Text(
                              "List Name",
                              style: TextStyle(color: PopKartAppColor.black),
                            ),
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 15.0,
                            ))
                      ],
                    ),*/
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
