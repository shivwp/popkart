import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/settings/presentation/ui/pages/settings_screen.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => const SettingsPage(),
                  ),
                );
              },
              icon: Icon(Icons.settings))
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "Notifications",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return Container();
                },
                itemCount: 4,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                    child: Card(
                      child: Container(
                        color: PopKartAppColor.grey.withOpacity(0.05),
                        padding: EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.topCenter,
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: PopKartAppColor.white,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  "P",
                                  style: TextStyle(
                                    color: PopKartAppColor.appbar,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Everyday English-French-Spanish \nConversation and Fun -Joe",
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  "Assemble enbas asdmasd muasn \nlorem ipsum adnd",
                                  style: TextStyle(
                                    color: PopKartAppColor.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "9 hrs",
                                      style: TextStyle(
                                          color: PopKartAppColor.appbar),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.35,
                                    ),
                                    Text(
                                      "Delete",
                                      style: TextStyle(
                                        color: PopKartAppColor.appbar,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
