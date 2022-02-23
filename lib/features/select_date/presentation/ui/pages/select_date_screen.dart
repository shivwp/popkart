import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/add_items/presentation/ui/pages/add_items_screen.dart';
import 'package:popkart/features/add_items/presentation/ui/pages/no_items_screen.dart';
import 'package:popkart/features/select_time/presentation/ui/pages/select_time_screen.dart';
import 'package:popkart/features/settings_features/notifications/presentation/ui/pages/notifications_screen.dart';
import 'package:table_calendar/table_calendar.dart';

class SelectDatePage extends StatefulWidget {
  const SelectDatePage({Key? key}) : super(key: key);

  @override
  _SelectDatePageState createState() => _SelectDatePageState();
}

class _SelectDatePageState extends State<SelectDatePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _nameEditingController = TextEditingController();
  late AutovalidateMode autovalidateMode;
  List<String> personName = <String>[
    "Sara Williem",
    "Pitter Williem",
    "Nora Williem",
    "Laiza Williem",
  ];
  var selectedPerson;
  List<String> personGmail = <String>[
    "sara@gmail.com",
    "pitter@gmail.com",
    "nora@gmail.com",
    "laiza@gmail.com",
  ];
  List<String> image = <String>[
    "assets/images/person.png",
    "assets/images/person.png",
  ];

  @override
  Widget build(BuildContext context) {
    TextStyle labelstyle = TextStyle(
      color: PopKartAppColor.black,
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
    );
    TextStyle hintStyle = TextStyle(
      color: PopKartAppColor.grey,
      fontSize: 18.0,
    );
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
        centerTitle: false,
        titleSpacing: 0.0,
        title: Transform(
          // You can forcefully translate values left side using Transform
          transform: Matrix4.translationValues(-12.0, 0.0, 0.0),
          child: Image.asset(
            'assets/images/pop_kart_logo.png',
            height: 45,
          ),
        ),
        actions: [
          Badge(
              position: BadgePosition.topEnd(top: 16, end: 14),
              badgeColor: PopKartAppColor.greenBlue,
              badgeContent: null,
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => NotificationsPage(),
                        ));
                  }, icon: Icon(Icons.notifications))),
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
                  "assets/images/person.png",
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
            /*child: Container(
              height: 60.0,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  Container(
                    height: 80,
                    margin: EdgeInsets.all(4),
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
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.005,
                      ),
                      Text(
                        "Main Shopper Name",
                        style: TextStyle(
                          fontSize: 18,
                          color: PopKartAppColor.white,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.005,
                      ),
                      Text(
                        "Grocery List 1",
                        style: TextStyle(
                          fontSize: 18,
                          color: PopKartAppColor.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),*/
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text("Members Added"),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.only(left: 16.0),
            child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 10.0);
                },
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(0.0),
                itemCount: image.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      image[index],
                      fit: BoxFit.cover,
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 10.0,
          ),
          Divider(
            color: PopKartAppColor.grey.withOpacity(0.2),
            thickness: 2,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Text(
                "Select a Date and Time for when you Plan to pickup groceries",
                style: TextStyle(fontSize: 15.0),
                textAlign: TextAlign.center),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: PopKartAppColor.grey.withOpacity(0.5),
                        )),
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: PopKartAppColor.black,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Date"),
                        ],
                      ),
                    )),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => SelectTimePage(),
                      ),
                    );
                  },
                  child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: PopKartAppColor.grey.withOpacity(0.5),
                          )),
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.access_time,
                              color: PopKartAppColor.black,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Time"),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
            ),
          ),
          SizedBox(height: 10.0)
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => NoItemsPage(),
              ),
            );
          },
          child: Text("Create"),
          style: ElevatedButton.styleFrom(
            elevation: 2.0,
            shape: StadiumBorder(),
            padding: EdgeInsets.all(18),
            primary: PopKartAppColor.greenBlue,
            // <-- Button color
            onPrimary: PopKartAppColor.black, // <-- Splash color
          ),
        ),
      ),
    );
  }
}
