import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:popkart/features/add_items/presentation/ui/pages/add_items_screen.dart';

class SelectTimePage extends StatefulWidget {
  const SelectTimePage({Key? key}) : super(key: key);

  @override
  _SelectTimePageState createState() => _SelectTimePageState();
}

class _SelectTimePageState extends State<SelectTimePage> {
  DateTime _dateTime = DateTime.now();
  List<String> image = <String>[
    "assets/images/person.png",
    "assets/images/person.png",
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
          icon: Icon(Icons.arrow_back),
        ),
        title: Image.asset(
          'assets/images/pop_kart_logo.png',
          height: 50,
        ),
        actions: [
          Badge(
              position: BadgePosition.topEnd(top: 16, end: 14),
              badgeColor: PopKartAppColor.greenBlue,
              badgeContent: null,
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.notifications))),
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
                          Text("Wednesday,19 Jan"),
                        ],
                      ),
                    )),
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
                            Icons.access_time,
                            color: PopKartAppColor.black,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("11:30 AM"),
                        ],
                      ),
                    )),
              ],
            ),
          ),
          TimePickerSpinner(
            is24HourMode: false,
            normalTextStyle: TextStyle(fontSize: 24, color: Colors.deepOrange),
            highlightedTextStyle: TextStyle(fontSize: 24, color: Colors.yellow),
            spacing: 50,
            itemHeight: 80,
            isForce2Digits: true,
            minutesInterval: 15,
            onTimeChange: (time) {
              setState(() {
                _dateTime = time;
              });
            },
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => AddItemsPage(),
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
