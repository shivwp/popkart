import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/menu_shared_lists/presentation/ui/widgets/my_shared_screen.dart';

class SharedListsPage extends StatefulWidget {
  const SharedListsPage({Key? key}) : super(key: key);

  @override
  _SharedListsPageState createState() => _SharedListsPageState();
}

class _SharedListsPageState extends State<SharedListsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  String buttonTapKey = 'my_story';
  List<String> name = <String>[
    "Piter Walker",
    "Alex Morgin",
    "Ragnar Richmond"
  ];

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 15.0),
          DefaultTabController(
            length: 2,
            initialIndex: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TabBar(
                    controller: _tabController,
                    labelColor: Colors.white,
                    indicatorColor: Colors.white,
                    unselectedLabelColor: Colors.black54,
                    labelStyle: TextStyle(fontSize: 17.0),
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: PopKartAppColor.lightBlue),
                    indicatorWeight: 1.0,
                    isScrollable: true,
                    tabs: [
                      Container(
                          height: 50.0,
                          width: 150.0,
                          child: Tab(text: "My Shared")),
                      Container(
                          height: 50.0,
                          width: 150.0,
                          child: Tab(text: "Others Shared")),
                    ]),
                Container(
                  height: 600.0,
                  child: TabBarView(children: [
                    // Content of Timeline Tab
                    MySharedPage(),
                    Center(child: Text("Others Shared")),
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

/*   return ListView(
      children: [
        SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: DefaultTextStyle(
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              child: RoundedContainer(
                  height: 50,
                  child: Flex(direction: Axis.horizontal, children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                          alignment: Alignment.center,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomLeft: Radius.circular(8)),
                            gradient: buttonTapKey == 'my_shared'
                                ? PopKartAppColor.welcomeGradient
                                : LinearGradient(colors: [
                                    Color(0xFF949494),
                                    Color(0xFFDEDEDE)
                                  ]),
                          ),
                          child: Text(
                            'My Shared',
                            textAlign: TextAlign.center,
                          )).gestures(onTap: () {
                        setState(() {
                          buttonTapKey = 'my_shared';
                        });
                      }),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                          alignment: Alignment.center,
                          height: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8)),
                              gradient: buttonTapKey == 'my_shared'
                                  ? LinearGradient(colors: [
                                      Color(0xFF949494),
                                      Color(0xFFDEDEDE)
                                    ])
                                  : PopKartAppColor.welcomeGradient),
                          child: Text(
                            'Other Shared',
                            textAlign: TextAlign.center,
                          )).gestures(onTap: () {
                        setState(() {
                          buttonTapKey = 'other shared';
                        });
                      }),
                    )
                  ]))),
        ),
       */ /* SizedBox(height: 20.0),
        Container(
          child: ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) {
              return Container(height: 10.0);
            },
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyListsDetailsPage()),
                  );
                },
                child: Padding(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      name[index],
                                      style: TextStyle(fontSize: 17.0),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const SharedListsDetailsPage()),
                                          );
                                        },
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
                                      color: PopKartAppColor.black,
                                      fontSize: 15.0),
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
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                SizedBox(width: 20.0),
                                Stack(
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

                                    */ /**/ /*      new Container(
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
                                            color: const Color.fromRGBO(
                                                218, 165, 32, 1.0))),
                                    new Positioned(
                                      left: 20.0,
                                      child: new Container(
                                          decoration: new BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                              boxShadow: [
                                                new BoxShadow(
                                                  blurRadius: 5.0,
                                                  offset: const Offset(3.0, 0.0),
                                                  color: Colors.grey,
                                                )
                                              ]),
                                          child: new Icon(Icons.monetization_on,
                                              size: 36.0,
                                              color: const Color.fromRGBO(
                                                  218, 165, 32, 1.0))),
                                    ),
                                    new Positioned(
                                      left: 40.0,
                                      child: new Container(
                                          decoration: new BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                              boxShadow: [
                                                new BoxShadow(
                                                  blurRadius: 5.0,
                                                  offset: const Offset(3.0, 0.0),
                                                  color: Colors.grey,
                                                )
                                              ]),
                                          child: new Icon(Icons.monetization_on,
                                              size: 36.0,
                                              color: const Color.fromRGBO(
                                                  218, 165, 32, 1.0))),
                                    )*/ /**/ /*
                                  ],
                                ),

                                */ /**/ /* Stack(
                                  children: [
                                    Image.asset(
                                      "assets/images/female.png",
                                      height: 30.0,
                                      width: 30.0,
                                      fit: BoxFit.cover,
                                    ),
                                    Positioned(
                                      left: 20.0,
                                      child: Image.asset(
                                        "assets/images/female.png",
                                        height: 30.0,
                                        width: 30.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                )*/ /**/ /*
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),*/ /*
      ],
    );
  }
}
*/
