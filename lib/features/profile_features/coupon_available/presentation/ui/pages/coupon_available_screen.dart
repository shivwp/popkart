import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/settings/presentation/ui/pages/settings_screen.dart';

class CouponAvailablePage extends StatefulWidget {
  const CouponAvailablePage({Key? key}) : super(key: key);

  @override
  _CouponAvailablePageState createState() => _CouponAvailablePageState();
}

class _CouponAvailablePageState extends State<CouponAvailablePage> {
  TextStyle labelstyle = TextStyle(
    color: PopKartAppColor.black,
    fontSize: 18.0,
  );
  TextStyle hintStyle = TextStyle(
    color: PopKartAppColor.grey,
    fontSize: 18.0,
  );
  String searchString = "";
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PopKartAppColor.appbar,
        centerTitle: false,
        titleSpacing: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, size: 25.0),
        ),
        title: Transform(
          // You can forcefully translate values left side using Transform
          transform: Matrix4.translationValues(-12.0, 0.0, 0.0),
          child: Image.asset(
            'assets/images/pop_kart_logo.png',
            height: 45,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => SettingsPage(),
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 20.0),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 20),
                  child: Text(
                    "Coupons Available",
                    style: labelstyle,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(height: 5);
                    },
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        decoration: BoxDecoration(
                            color: PopKartAppColor.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10)),
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Coupon Name",
                              style: labelstyle,
                            ),
                            Text(
                              "50% Off",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Image.asset("assets/images/barcode.png"),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Image.asset(
              "assets/images/banner_ad.png",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
