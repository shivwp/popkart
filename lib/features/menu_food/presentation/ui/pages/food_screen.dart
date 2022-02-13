import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  _FoodScreenState createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  List<String> name = <String>[
    "Arnolds Country White",
    "Nature's Own Honey Wheat",
    "Arnolds Country White",
    "Nature's Own Honey Wheat",
    "Arnolds Country White",
    "Nature's Own Honey Wheat",
    "Arnolds Country White",
    "Nature's Own Honey Wheat"
  ];
  List<String> popUpName = [
    "Delete",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) {
          return Container(height: 10.0);
        },
        itemCount: 8,
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
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(name[index]),
                      PopupMenuButton(
                        offset: Offset(0, 0),
                        icon: Icon(
                          Icons.more_vert,
                          color: PopKartAppColor.grey,
                          size: 20.0,
                        ),
                        onSelected: (index) {},
                        itemBuilder: (BuildContext context) {
                          return List.generate(1, (index) {
                            return PopupMenuItem(
                              child: InkWell(
                                  onTap: () {}, child: Text(popUpName[index])),
                            );
                          });
                        },
                      )
                    ],
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("x1"),
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Text(
                          "\$5.40",
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
