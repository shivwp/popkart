import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';

class EditItemPage extends StatefulWidget {
  const EditItemPage({Key? key}) : super(key: key);

  @override
  _EditItemPageState createState() => _EditItemPageState();
}

class _EditItemPageState extends State<EditItemPage> {
  TextStyle labelstyle = TextStyle(
    color: PopKartAppColor.black,
    fontSize: 18.0,
  );
  TextStyle hintStyle = TextStyle(
    color: PopKartAppColor.grey,
    fontSize: 14.0,
  );

  int qty = 1;

  void _qtyAdd() {
    setState(() {
      qty++;
    });
  }

  void _qtyDecrement() {
    if (qty != 1) {
      setState(() {
        qty--;
      });
    }
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
          icon: Icon(Icons.arrow_back),
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
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Edit Item",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                ListTile(
                  leading: Image.asset(
                    "assets/images/candy.png",
                    height: 80,
                    width: 80,
                  ),
                  title: Text(
                    "Nature's Own Honey Wheat",
                    style:
                        TextStyle(color: PopKartAppColor.black, fontSize: 15.0),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "x1",
                        style: TextStyle(
                            color: PopKartAppColor.black, fontSize: 15.0),
                      ),
                      Text(
                        "\$5.40",
                        style: TextStyle(
                            color: PopKartAppColor.green, fontSize: 15.0),
                      )
                    ],
                  ),
                ),
                /*Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/candy.png",
                      height: 80,
                      width: 80,
                    ),
                    SizedBox(width: 30.0),
                    Text(
                      "Almonds Country White",
                      style: TextStyle(
                          color: PopKartAppColor.black, fontSize: 15.0),
                    )
                  ],
                ),*/
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 42.0, top: 30),
                  child: Text(
                    "Add Message",
                    style: labelstyle,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.white.withOpacity(0.9),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      height: 120,
                      child: TextFormField(
                        maxLines: 4,
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          hintText: "Message Details(optional)",
                          hintStyle: hintStyle,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        _qtyDecrement();
                        print("decrement");
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Container(
                            padding: EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/images/minus_icon.png",
                              height: 30.0,
                              width: 30.0,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "$qty",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _qtyAdd();
                          print("increment");
                        });
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Container(
                            padding: EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/images/plus_icon.png",
                              height: 30.0,
                              width: 30.0,
                            )),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Request to Add"),
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
