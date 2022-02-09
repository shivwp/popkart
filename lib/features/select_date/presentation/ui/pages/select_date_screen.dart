import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/select_time/presentation/ui/pages/select_time_screen.dart';
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
            icon: Icon(
              Icons.notifications,
              color: PopKartAppColor.white,
            ),
            onPressed: () {
              debugPrint("Notifications");
            },
            color: PopKartAppColor.appbar,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: PopKartAppColor.lightBlue),
            child: Container(
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
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Members Added"),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                height: 50,
                // width: MediaQuery.of(context).size.height * 0.220,
                padding: EdgeInsets.only(left: 0.0),
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
              Divider(
                color: PopKartAppColor.grey,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "Select a Date and Time for when you Plan to pickup groceries",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                              color: PopKartAppColor.black,
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
                  ),
                  Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: PopKartAppColor.black,
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
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TableCalendar(
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                ),
              ),
              SizedBox(height: 10.0)
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
        child: ElevatedButton(
          onPressed: () {},
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
