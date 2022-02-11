import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/item_increment/presentation/ui/pages/item_increment_screen.dart';

class AddItemsPage extends StatefulWidget {
  const AddItemsPage({Key? key}) : super(key: key);

  @override
  _AddItemsPageState createState() => _AddItemsPageState();
}

class _AddItemsPageState extends State<AddItemsPage> {
  List<String> images = [
    "assets/images/candy.png",
    "assets/images/candy.png",
    "assets/images/candy.png",
    "assets/images/candy.png",
    "assets/images/candy.png",
    "assets/images/candy.png",
  ];
  TextStyle labelstyle = TextStyle(
    color: PopKartAppColor.black,
    fontSize: 17.0,
  );
  TextStyle hintStyle = TextStyle(
    color: PopKartAppColor.grey,
    fontSize: 14.0,
  );

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
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 30),
            child: Text(
              "Add Item",
              style: labelstyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 30.0, top: 10),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 8,
              child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            size: 20.0,
                            color: PopKartAppColor.grey,
                          ))),
                  Expanded(
                    child: TextFormField(
                      cursorColor: Colors.grey,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter email';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Bread",
                        hintStyle: TextStyle(
                          color: PopKartAppColor.black,
                          fontSize: 17.0,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.close,
                            size: 20.0,
                            color: PopKartAppColor.grey,
                          ))),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 30),
            child: Text(
              "Item Name",
              style: labelstyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 40.0),
            child: TextFormField(
              cursorColor: Colors.grey,
              style: TextStyle(color: Colors.white),
              // controller: _nameEditingController,
              // validator: (value) {
              //   if (value!.isEmpty) {
              //     return 'Please enter email';
              //   } else {
              //     return null;
              //   }
              // },
              decoration: InputDecoration(
                hintText: "Name",
                hintStyle: hintStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 30),
            child: Text(
              "Favorites",
              style: labelstyle,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            width: MediaQuery.of(context).size.width,
            height: 90,
            child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) => SizedBox(),
              itemCount: images.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 20),
                      padding: EdgeInsets.all(5.0),
                      child: Image.asset(
                        images[index],
                        height: 60.0,
                        width: 60.0,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: PopKartAppColor.grey)),
                    ),
                    Positioned(
                      right: 0,
                      top: 20,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 30),
            child: Text(
              "Add Message",
              style: labelstyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 30.0, top: 10),
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
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (ctx) => ItemIncrementPage()));
          },
          child: Text("Next"),
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
