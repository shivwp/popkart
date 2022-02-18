import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';

class RejectAcceptPage extends StatefulWidget {
  const RejectAcceptPage({Key? key}) : super(key: key);

  @override
  _RejectAcceptPageState createState() => _RejectAcceptPageState();
}

class _RejectAcceptPageState extends State<RejectAcceptPage> {
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
                      height: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: PopKartAppColor.white,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset("assets/images/candy.png"),
                              Text(
                                "Brand Name Banana",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "×1",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  "assets/images/female.png",
                                  height: 50.0,
                                  width: 50.0,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.only(left: 40.0, right: 40.0),
                                    child: TextFormField(
                                      maxLines: 3,
                                      initialValue:
                                      "Hey I forgot to tell you that we need bananas",
                                      cursorColor: Colors.grey,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: PopKartAppColor.grey.withOpacity(0.11),
                                        // hintText: "Hey I forgot to tell you that we need bananas",
                                        hintStyle: hintStyle,
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 10),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.transparent),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.transparent),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
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
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: PopKartAppColor.white,
                                      border:
                                      Border.all(color: PopKartAppColor.greenBlue)),
                                  child: Text("Reject"),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  debugPrint("accept");
                                },
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 35, vertical: 15),
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
