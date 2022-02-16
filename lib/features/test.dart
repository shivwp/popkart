import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';

class Subscriptiob extends StatefulWidget {
  const Subscriptiob({Key? key}) : super(key: key);

  @override
  _SubscriptiobState createState() => _SubscriptiobState();
}

class _SubscriptiobState extends State<Subscriptiob> {
  bool isExpanded = false;
  List<String> monetary = [
    "Include all the free version features",
    "The users will be able to edit the shopping list",
    "The users will be able to add the reward card pictures for future records",
    "The user will be able to view the price info of products added to the shopping list with the total amount",
    "The users will be able to share the grocery list with 10 friends",
    " The main user will be able to edit the grocery list on the shopping days(It implies the list can be edited only one time by the main user)",
    "Ads: It will be Google ads",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Subscribe",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: isExpanded ? 550 : 60,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            margin: const EdgeInsets.all(12),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: isExpanded
                          ? const BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                            )
                          : BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Free version',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                isExpanded = !isExpanded;
                              });
                            },
                            icon: Icon(
                              isExpanded
                                  ? Icons.expand_less_outlined
                                  : Icons.expand_more_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (isExpanded) ...[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          ...List.generate(
                            monetary.length,
                            (index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                      leading: Text("1."),
                                      title: Text(
                                        monetary[index],
                                        style: TextStyle(fontSize: 12.0),
                                      ),
                                    ),
                                    /* Text("1."),
                                    Text(
                                      monetary[index],
                                      style: TextStyle(fontSize: 12.0),
                                    ),*/
                                    const Divider(
                                        thickness: 0.5, color: Colors.black),
                                  ],
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            width: 200,
                            child: ElevatedButton(
                              child: Text("Upgrade"),
                              style: ElevatedButton.styleFrom(
                                elevation: 2.0,
                                shape: StadiumBorder(),
                                padding: EdgeInsets.all(18),
                                primary: PopKartAppColor.greenBlue,
                                // <-- Button color
                                onPrimary:
                                    PopKartAppColor.black, // <-- Splash color
                              ),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ]
                ],
              ),
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: isExpanded ? 550 : 60,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            margin: const EdgeInsets.all(12),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: isExpanded
                          ? const BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                            )
                          : BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              '99 cent version(One-Time Payment)',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                isExpanded = !isExpanded;
                              });
                            },
                            icon: Icon(
                              isExpanded
                                  ? Icons.expand_less_outlined
                                  : Icons.expand_more_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (isExpanded) ...[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          ...List.generate(
                            monetary.length,
                            (index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      monetary[index],
                                    ),
                                    const Divider(
                                        thickness: 1, color: Colors.black),
                                  ],
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            width: 200,
                            child: ElevatedButton(
                              child: Text("Upgrade"),
                              style: ElevatedButton.styleFrom(
                                elevation: 2.0,
                                shape: StadiumBorder(),
                                padding: EdgeInsets.all(18),
                                primary: PopKartAppColor.greenBlue,
                                // <-- Button color
                                onPrimary:
                                    PopKartAppColor.black, // <-- Splash color
                              ),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ]
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
/*
import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  List<String> image = <String>[
    "assets/images/person.png",
    "assets/images/female.png",
  ];
  List<String> groceryItems = [
    "assets/images/candy.png",
    "assets/images/candy.png",
  ];
  List<String> title = [
    "Arnolds Country White",
    "Nature's Own Honey Wheat",
  ];
  List<String> price = [
    "Rs 5.30",
    'Rs 6.40',
  ];
  TextStyle labelstyle = TextStyle(
    color: PopKartAppColor.black,
    fontSize: 18.0,
    fontWeight: FontWeight.w400,
  );
  TextStyle hintStyle = TextStyle(
    color: PopKartAppColor.grey,
    fontSize: 18.0,
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
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
              color: PopKartAppColor.white,
              size: 30,
            ),
            onPressed: () {
              debugPrint("Add");
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: PopKartAppColor.white,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset("assets/images/candy.png"),
                              Text(
                                "Brand Name Banana",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "×1",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  "assets/images/female.png",
                                  height: 50.0,
                                  width: 50.0,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 40.0, right: 40.0),
                                    child: TextFormField(
                                      maxLines: 3,
                                      initialValue:
                                          "Hey I forgot to tell you that we need bananas",
                                      cursorColor: Colors.grey,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: PopKartAppColor.grey
                                            .withOpacity(0.11),
                                        // hintText: "Hey I forgot to tell you that we need bananas",
                                        hintStyle: hintStyle,
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 10),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  debugPrint("reject");
                                },
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 35, vertical: 15),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: PopKartAppColor.white,
                                      border: Border.all(
                                          color: PopKartAppColor.greenBlue)),
                                  child: Text("Reject"),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  debugPrint("accept");
                                },
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 35, vertical: 15),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: PopKartAppColor.greenBlue,
                                  ),
                                  child: Text("Accept"),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  });
            },
            color: PopKartAppColor.appbar,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(110.0),
          child: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: PopKartAppColor.lightBlue),
            child: Container(
              color: PopKartAppColor.lightBlue,
              height: 100.0,
              alignment: Alignment.center,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 1,
                    child: ListTile(
                      leading: Container(
                        height: 100,
                        width: 60,
                        // margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          "assets/images/female.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        "MainShopper Name",
                        style: TextStyle(
                          color: PopKartAppColor.white,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Text(
                        "\nGrocery List 1",
                        style: TextStyle(
                          color: PopKartAppColor.white,
                        ),
                      ),
                    ),
                  ),
                ],
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
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView.separated(
                itemBuilder: (ctx, index) {
                  return Container(
                    height: 10,
                  );
                },
                separatorBuilder: (BuildContext context, index) {
                  return Card(
                    margin: EdgeInsets.all(12),
                    color: PopKartAppColor.lightGrey,
                    child: Container(
                      margin: EdgeInsets.all(12),
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/female.png",
                            height: 40,
                            width: 40,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Grocery List 1",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Arnolds Country White",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "×1",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Rs 50",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: PopKartAppColor.green,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Image.asset(
                                "assets/images/female.png",
                                height: 35,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: 4),
          ),
        ],
      ),
    );
  }
}
*/
