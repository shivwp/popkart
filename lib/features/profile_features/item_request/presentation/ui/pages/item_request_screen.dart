import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';

class ItemRequestPage extends StatefulWidget {
  const ItemRequestPage({Key? key}) : super(key: key);

  @override
  _ItemRequestPageState createState() => _ItemRequestPageState();
}

class _ItemRequestPageState extends State<ItemRequestPage> {
  List<String> personName = <String>[
    "Piter Walker",
    "Alex Margin",
    "Ragnar Richmond",
  ];
  List<String> number = <String>[
    "1",
    "",
    "2",
  ];
  List<String> image = <String>[
    "assets/images/person.png",
    "assets/images/female.png",
    "assets/images/person.png",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: PopKartAppColor.appbar,
          title: Image.asset(
            'assets/images/pop_kart_logo.png',
            height: 50,
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
            ),
          ],
          bottom: TabBar(
            labelColor: PopKartAppColor.darkBlue,
            labelStyle: TextStyle(
              fontSize: 18,
              // fontWeight: FontWeight.bold,
            ),
            unselectedLabelColor: PopKartAppColor.white,
            indicatorColor: PopKartAppColor.darkBlue,
            indicatorWeight: 3,
            tabs: [
              Tab(
                text: "Pending",
              ),
              Tab(
                text: "Rejected",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height * 1,
                child: ListView.separated(
                  itemCount: 3,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 20,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            Container(
                              height: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                image[index],
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
                                Text(
                                  personName[index],
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.005,
                                ),
                                Text(
                                  "Wednesday, 19 Jan ",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: PopKartAppColor.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.025,
                                ),
                              ],
                            ),
                          ],
                        ),
                        number == null
                            ? Container()
                            : Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: PopKartAppColor.greenBlue,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Text(
                                    number[index],
                                    style: TextStyle(
                                      color: PopKartAppColor.black,
                                    ),
                                  ),
                                ),
                              ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
          ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height * 1,
                child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 60,
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
                                Text(
                                  "Alex Margin",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.005,
                                ),
                                Text(
                                  "Wednesday, 19 Jan ",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: PopKartAppColor.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.025,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          "Rejected",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ],
                    );
                  },
                  itemCount: 3,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 20,
                    );
                  },
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
