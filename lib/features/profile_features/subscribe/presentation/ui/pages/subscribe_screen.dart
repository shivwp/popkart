import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/settings/presentation/ui/pages/settings_screen.dart';

class SubscribePage extends StatefulWidget {
  const SubscribePage({Key? key}) : super(key: key);

  @override
  _SubscribePageState createState() => _SubscribePageState();
}

class _SubscribePageState extends State<SubscribePage> {
  bool isExpanded = false;
  bool is99CentExpanded = false;
  bool is2Expanded = false;
  List<String> number = [
    "1.",
    "2.",
    "3.",
    "4.",
    "5.",
    "6.",
    "7.",
  ];

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
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              "Subscribe",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 20.0),
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
                        color: Colors.grey.withOpacity(0.1),
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
                                    RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: number[index],
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: PopKartAppColor.black,
                                          ),
                                        ),
                                        TextSpan(
                                            text: monetary[index],
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ))
                                      ]),
                                    ),
                                    const Divider(
                                        thickness: 1, color: Colors.black),
                                  ],
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: 20,
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
                            height: 50,
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
            height: is99CentExpanded ? 550 : 60,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            margin: const EdgeInsets.all(12),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: is99CentExpanded
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
                                is99CentExpanded = !is99CentExpanded;
                              });
                            },
                            icon: Icon(
                              is99CentExpanded
                                  ? Icons.expand_less_outlined
                                  : Icons.expand_more_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (is99CentExpanded) ...[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
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
                                    RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: number[index],
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: PopKartAppColor.black,
                                          ),
                                        ),
                                        TextSpan(
                                            text: monetary[index],
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ))
                                      ]),
                                    ),
                                    const Divider(
                                        thickness: 1, color: Colors.black),
                                  ],
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: 20,
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
                            height: 50,
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
            height: is2Expanded ? 550 : 60,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            margin: const EdgeInsets.all(12),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: is2Expanded
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
                              '\$2(One-Time Payment)',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                is2Expanded = !is2Expanded;
                              });
                            },
                            icon: Icon(
                              is2Expanded
                                  ? Icons.expand_less_outlined
                                  : Icons.expand_more_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (is2Expanded) ...[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
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
                                    RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: number[index],
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: PopKartAppColor.black,
                                          ),
                                        ),
                                        TextSpan(
                                            text: monetary[index],
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ))
                                      ]),
                                    ),
                                    const Divider(
                                        thickness: 1, color: Colors.black),
                                  ],
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: 20,
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
                            height: 50,
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
