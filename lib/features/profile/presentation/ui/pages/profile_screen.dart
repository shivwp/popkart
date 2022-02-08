import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/contact_list/presentation/ui/pages/contact_list_screen.dart';
import 'package:popkart/features/rewards_card/presentation/ui/pages/rewards_card_screen.dart';
import 'package:popkart/features/your_friends/presentation/ui/pages/your_friends_screen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextStyle _textStyle = TextStyle(fontSize: 17.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: PopKartAppColor.appbar,
        title: Image.asset(
          'assets/images/pop_kart_logo.png',
          height: 50,
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 16.0, right: 16.0),
        children: [
          SizedBox(height: 10.0),
          Center(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                      'https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg'),
                  child: Stack(children: []),
                ),
                InkWell(
                  child: Container(
                    width: MediaQuery.of(context).size.height * 0.045,
                    height: MediaQuery.of(context).size.height * 0.045,
                    decoration: BoxDecoration(
                      color: PopKartAppColor.border,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: PopKartAppColor.white,
                        width: 3,
                      ),
                    ),
                    child: Icon(
                      Icons.edit,
                      size: 20.0,
                      color: PopKartAppColor.white,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            "Sara RichMond",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: PopKartAppColor.black,
              fontSize: 17,
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            "sararichmond@gmail.com",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: PopKartAppColor.grey,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 20.0),
          ListTile(
            leading: Icon(Icons.style, size: 16.0),
            title: Text("Subscribe", style: _textStyle),
            trailing: Icon(Icons.arrow_forward_ios_outlined, size: 16.0),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Container(
              color: PopKartAppColor.grey,
              width: double.infinity,
              height: 0.5,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => RewardsCardPage(),
                ),
              );
            },
            leading: Icon(Icons.style, size: 16.0),
            title: Text("Reward Card", style: _textStyle),
            trailing: Icon(Icons.arrow_forward_ios_outlined, size: 16.0),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Container(
              color: PopKartAppColor.grey,
              width: double.infinity,
              height: 0.5,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => YourFriendsPage(),
                ),
              );
            },
            leading: Icon(Icons.style, size: 16.0),
            title: Text("Your Friends", style: _textStyle),
            trailing: Icon(Icons.arrow_forward_ios_outlined, size: 16.0),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Container(
              color: PopKartAppColor.grey,
              width: double.infinity,
              height: 0.5,
            ),
          ),
          ListTile(
            leading: Icon(Icons.style, size: 16.0),
            title: Text("Item Request", style: _textStyle),
            trailing: Icon(Icons.arrow_forward_ios_outlined, size: 16.0),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Container(
              color: PopKartAppColor.grey,
              width: double.infinity,
              height: 0.5,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => ContactListPage(),
                ),
              );
            },
            leading: Icon(Icons.style, size: 16.0),
            title: Text("Contact list", style: _textStyle),
            trailing: Icon(Icons.arrow_forward_ios_outlined, size: 16.0),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Container(
              color: PopKartAppColor.grey,
              width: double.infinity,
              height: 0.5,
            ),
          ),
          ListTile(
            leading: Icon(Icons.style, size: 16.0),
            title: Text("Couple Available", style: _textStyle),
            trailing: Icon(Icons.arrow_forward_ios_outlined, size: 16.0),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Container(
              color: PopKartAppColor.grey,
              width: double.infinity,
              height: 0.5,
            ),
          )
        ],
      ),
    );
  }
}
