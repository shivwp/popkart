import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:badges/badges.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  List<String> name = <String>[
    "Arnolds Country White",
    "Nature's Own Honey Wheat"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PopKartAppColor.white,
      appBar: AppBar(
        backgroundColor: PopKartAppColor.appbar,
        leading: IconButton(
          onPressed: () {
            _showAlert(context);
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
            onPressed: () {},
            icon: Icon(
              Icons.add,
              size: 30.0,
            ),
          ),
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
              trailing: InkWell(
                onTap: () {
                  _showAlert(context);
                },
                child: Image.asset(
                  "assets/images/edit_icon.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.calendar_today,
                size: 20.0,
              ),
              Text("Wednesday,19 Jan"),
              SizedBox(width: 10.0),
              Icon(
                Icons.access_time,
                size: 20.0,
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
                      height: 80.0,
                      color: PopKartAppColor.grey.withOpacity(0.05),
                      child: ListTile(
                        leading: Image.asset(
                          "assets/images/candy.png",
                          height: 70.0,
                          width: 70.0,
                          fit: BoxFit.cover,
                        ),
                        title: Text(name[index]),
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
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
        child: ElevatedButton(
          onPressed: () {
            _showAlert(context);
          },
          child: Text("Checkout"),
          style: ElevatedButton.styleFrom(
            elevation: 2.0,
            shape: StadiumBorder(),
            padding: EdgeInsets.all(20),
            primary: PopKartAppColor.greenBlue,
            // <-- Button color
            onPrimary: PopKartAppColor.black, // <-- Splash color
          ),
        ),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        title: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            "You can only edit this list once.",
            style: TextStyle(color: PopKartAppColor.black, fontSize: 15.0),
          ),
        ),
        // content: Text("You have raised a Alert Dialog Box"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Okey"),
                style: ElevatedButton.styleFrom(
                  elevation: 2.0,
                  shape: StadiumBorder(),
                  padding: EdgeInsets.all(20),
                  primary: PopKartAppColor.greenBlue,
                  // <-- Button color
                  onPrimary: PopKartAppColor.black, // <-- Splash color
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(""),
          ),
        ],
      ),
    );
  }
}
