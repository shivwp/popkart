import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';

class SelectTimePage extends StatefulWidget {
  const SelectTimePage({Key? key}) : super(key: key);

  @override
  _SelectTimePageState createState() => _SelectTimePageState();
}

class _SelectTimePageState extends State<SelectTimePage> {
  @override
  Widget build(BuildContext context) {
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
    );
  }
}
