import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';

class DuplicateOrderPlacedPage extends StatefulWidget {
  const DuplicateOrderPlacedPage({Key? key}) : super(key: key);

  @override
  _DuplicateOrderPlacedPageState createState() =>
      _DuplicateOrderPlacedPageState();
}

class _DuplicateOrderPlacedPageState extends State<DuplicateOrderPlacedPage> {
  TextStyle hintStyle = TextStyle(
    color: PopKartAppColor.grey,
    fontSize: 18.0,
  );
  List<String> name1 = <String>[
    "Grocery List 1",
    "Grocery List 1",
  ];

  List<String> name2 = <String>[
    "Arnolds Country White",
    "Nature's Own Honey Wheat"
  ];

  @override
  void initState() {
    super.initState();
  }

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
            size: 25.0,
          ),
        ),
        title: Image.asset(
          'assets/images/pop_kart_logo.png',
          height: 50,
        ),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: PopKartAppColor.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 12.0),
                          Text(
                            "Duplicate Order Placed",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/candy.png",
                                  height: 70.0,
                                  width: 70.0,
                                ),
                                SizedBox(width: 20.0),
                                Text(
                                  "Nature's Own Honey White",
                                  style: TextStyle(fontSize: 15.0),
                                ),
                                SizedBox(width: 25.0),
                                Text(
                                  "×1",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  "assets/images/female.png",
                                  height: 50.0,
                                  width: 50.0,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 40.0, right: 40.0),
                                    child: Text(
                                      "No Message Sent",
                                      style: TextStyle(
                                          color: PopKartAppColor.grey),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  debugPrint("reject");
                                },
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 35, vertical: 15),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: PopKartAppColor.white,
                                      border: Border.all(
                                          color: PopKartAppColor.greenBlue)),
                                  child: Text("Reject"),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  debugPrint("accept");
                                },
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 35, vertical: 15),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: PopKartAppColor.greenBlue,
                                  ),
                                  child: Text("Accept"),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  });
            },
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
                      color: PopKartAppColor.grey.withOpacity(0.05),
                      child: Column(
                        children: [
                          SizedBox(height: 10.0),
                          ListTile(
                            leading: Image.asset(
                              "assets/images/candy.png",
                              height: 70.0,
                              width: 70.0,
                              fit: BoxFit.cover,
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(name1[index]),
                                SizedBox(height: 5.0),
                                Text(
                                  name2[index],
                                  style: TextStyle(fontSize: 13.0),
                                ),
                                SizedBox(height: 5.0),
                              ],
                            ),
                            subtitle: Text("x1"),
                            trailing: Column(
                              children: [
                                Text(
                                  "\$5.40",
                                  style: TextStyle(color: Colors.green),
                                ),
                                SizedBox(height: 8.0),
                                Image.asset(
                                  "assets/images/female.png",
                                  height: 30.0,
                                  width: 30.0,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.0),
                        ],
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
