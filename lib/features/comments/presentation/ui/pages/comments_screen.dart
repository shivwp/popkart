import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({Key? key}) : super(key: key);

  @override
  _CommentsPageState createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  TextStyle hintStyle = TextStyle(
    color: PopKartAppColor.grey,
    fontSize: 14.0,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Container(
            height: 40.0,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            child: Row(
              children: [
                SizedBox(width: 5.0),
                Image.asset(
                  "assets/images/female.png",
                  height: 30,
                  width: 30,
                ),
                SizedBox(width: 5.0),
                Container(
                  height: 20.0,
                  width: 1.0,
                  color: PopKartAppColor.grey,
                ),
                SizedBox(width: 10.0),
                Container(
                  width: 200.0,
                  child: TextFormField(
                    maxLines: 2,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      hintText: "Comment here",
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
              ],
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
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Image.asset(
                  "assets/images/female.png",
                  height: 40,
                  width: 40,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text("Morlene4656"),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5.0),
                    Text("12 hour ago"),
                    SizedBox(height: 8.0),
                    Text(
                        "Established fact that a reader will be distracted by the readable content of a page.")
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
