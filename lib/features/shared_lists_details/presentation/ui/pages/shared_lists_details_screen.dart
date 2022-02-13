import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/shared_members/presentation/ui/pages/shared_members_screen.dart';

class SharedListsDetailsPage extends StatefulWidget {
  const SharedListsDetailsPage({Key? key}) : super(key: key);

  @override
  _SharedListsDetailsPageState createState() => _SharedListsDetailsPageState();
}

class _SharedListsDetailsPageState extends State<SharedListsDetailsPage> {
  bool _notificationSwitch = true;
  List<String> name = <String>[
    "Arnolds Country White",
    "Nature's Own Honey Wheat"
  ];
  List<String> popUpName = [
    "Comment",
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
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Mute Notification",
                  style:
                      TextStyle(color: PopKartAppColor.black, fontSize: 14.0),
                ),
                SizedBox(width: 8.0),
                CupertinoSwitch(
                  trackColor: PopKartAppColor.white,
                  activeColor: PopKartAppColor.lightBlue,
                  value: _notificationSwitch,
                  onChanged: (value) {
                    setState(() {
                      _notificationSwitch = value;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 30.0),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SharedMembersPage()),
                );
              },
              child: Text(
                "Shared Members",
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: PopKartAppColor.lightBlue, fontSize: 13.0),
              )),

          Padding(
            padding: const EdgeInsets.only(left: 170.0),
            child: Stack(
              //alignment:new Alignment(x, y)
              children: <Widget>[
                Image.asset(
                  "assets/images/female.png",
                  height: 30.0,
                  width: 30.0,
                  //  fit: BoxFit.cover,
                ),
                Positioned(
                  left: 20.0,
                  child: Image.asset(
                    "assets/images/female.png",
                    height: 30.0,
                    width: 30.0,
                    //   fit: BoxFit.cover,
                  ),
                ),
                /*  Container(
                    // width: double.infinity,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                          new BoxShadow(
                            blurRadius: 5.0,
                            offset: const Offset(3.0, 0.0),
                            color: Colors.grey,
                          )
                        ]),
                    child: new Icon(Icons.monetization_on,
                        size: 36.0,
                        color: const Color.fromRGBO(218, 165, 32, 1.0))),
                new Positioned(
                  left: 20.0,
                  child: new Container(
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [
                            new BoxShadow(
                              blurRadius: 5.0,
                              offset: const Offset(3.0, 0.0),
                              color: Colors.grey,
                            )
                          ]),
                      child: new Icon(Icons.monetization_on,
                          size: 36.0,
                          color: const Color.fromRGBO(218, 165, 32, 1.0))),
                ),
                new Positioned(
                  left: 40.0,
                  child: new Container(
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [
                            new BoxShadow(
                              blurRadius: 5.0,
                              offset: const Offset(3.0, 0.0),
                              color: Colors.grey,
                            )
                          ]),
                      child: new Icon(Icons.monetization_on,
                          size: 36.0,
                          color: const Color.fromRGBO(218, 165, 32, 1.0))),
                )*/
              ],
            ),
          ),
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
                size: 15.0,
              ),
              Text("Wednesday,19 Jan"),
              SizedBox(width: 10.0),
              Icon(
                Icons.access_time,
                size: 15.0,
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
                      color: PopKartAppColor.grey.withOpacity(0.05),
                      child: Column(
                        children: [
                          ListTile(
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
                                  padding: EdgeInsets.all(0.0),
                                  offset: Offset(0, 0),
                                  icon: Icon(
                                    Icons.more_vert,
                                    color: PopKartAppColor.grey,
                                    size: 20.0,
                                  ),
                                  onSelected: (index) {},
                                  itemBuilder: (BuildContext context) {
                                    return List.generate(3, (index) {
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
                          SizedBox(height: 3.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 25.0,
                                width: 90.0,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color:
                                          PopKartAppColor.grey.withOpacity(0.5),
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Row(
                                  children: [
                                    SizedBox(width: 8.0),
                                    Icon(
                                      Icons.thumb_up_alt_outlined,
                                      size: 15.0,
                                    ),
                                    SizedBox(width: 8.0),
                                    Text(
                                      "24M",
                                      style: TextStyle(
                                          color: PopKartAppColor.black,
                                          fontSize: 12.0),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Container(
                                height: 25.0,
                                width: 90.0,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color:
                                          PopKartAppColor.grey.withOpacity(0.5),
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Row(
                                  children: [
                                    SizedBox(width: 8.0),
                                    Icon(
                                      Icons.comment_outlined,
                                      size: 15.0,
                                    ),
                                    SizedBox(width: 8.0),
                                    Text(
                                      "2.5 K",
                                      style: TextStyle(
                                          color: PopKartAppColor.black,
                                          fontSize: 12.0),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 12.0),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
