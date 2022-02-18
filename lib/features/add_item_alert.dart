import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';

class Exercise {
  String name;

  Exercise({required this.name});
}

class AddItemAlert extends StatefulWidget {
  const AddItemAlert({Key? key}) : super(key: key);

  @override
  _AddItemAlertState createState() => _AddItemAlertState();
}

class _AddItemAlertState extends State<AddItemAlert> {
  int _counter = 0;
  List<Exercise> exercises = [
    Exercise(name: 'Arnolds Country White'),
    Exercise(name: 'Natures Own Honey Wheat'),
    Exercise(name: 'Arnolds Country White'),
    Exercise(name: 'Natures Own Honey Wheat'),
    Exercise(name: 'Arnolds Country White'),
    Exercise(name: 'Natures Own Honey Wheat'),
    Exercise(name: 'Natures Own Honey Wheat')
  ];
  late int _selecte = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
    return AlertDialog(
      title: TextFormField(
        cursorColor: Colors.grey,
        onChanged: (value) {
          setState(() {});
        },
        onTap: () {},
        decoration: InputDecoration(
          prefixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          hintText: "Bread",
          hintStyle: hintStyle,
          suffixIcon: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.clear)),
          contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      content: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.5,
                ),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: exercises.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Image.asset("assets/images/candy.png"),
                        title: Text(
                          exercises[index].name,
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
