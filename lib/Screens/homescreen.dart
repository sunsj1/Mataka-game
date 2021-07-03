import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:game/Screens/config.dart';
import 'package:game/Screens/history.dart';
import 'package:game/Screens/wallet/wallet.dart';
// import 'package:game/Screens/login.dart';
// import 'package:game/Screens/registration.dart';
import 'package:game/firstScreen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class MainScreen extends StatefulWidget {
  int balance;
  MainScreen({Key? key, required this.balance}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //  int bal=widget.balance;
  int _selectedIndex = 0;
  @override
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static List<Widget> _widgetOptions = <Widget>[
    FirstScreen(time: "open:12.30 closed:3",bidName: "Time",bidnumber: 123456,notification: "Market Closed",),
    History(),
    Text(
      'ChatBox',
      style: optionStyle,
    )
  ];

  @override
  Widget build(BuildContext context) {
    // final drawerHeader = UserAccountsDrawerHeader(
    //   co
    //   accountName:Text(
    //           'UserName',),
    //   accountEmail: Text(
    //           'UserName',),
    //           );

    final drawerItems = ListView(
      children: <Widget>[
        // drawerHeader,
        SizedBox(height: 30),

        ListTile(
            onTap: () {},
            tileColor: color_1,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            leading: Container(
              padding: EdgeInsets.only(right: 12.0),
              decoration: new BoxDecoration(
                  border: new Border(
                      right:
                          new BorderSide(width: 1.0, color: Colors.white24))),
              child: Icon(LineIcons.userAlt, color: Colors.white),
            ),
            title: Text(
              "MyProfile",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.keyboard_arrow_right,
                color: Colors.white, size: 30.0)),
        SizedBox(
          height: 2,
        ),
        ListTile(
            onTap: () {},
            tileColor: color_1,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            leading: Container(
              padding: EdgeInsets.only(right: 12.0),
              decoration: new BoxDecoration(
                  border: new Border(
                      right:
                          new BorderSide(width: 1.0, color: Colors.white24))),
              child: Icon(LineIcons.mobilePhone, color: Colors.white),
            ),
            title: Text(
              "Generate MPIN",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.keyboard_arrow_right,
                color: Colors.white, size: 30.0)),
        SizedBox(
          height: 2,
        ),
        ListTile(
            onTap: () {},
            tileColor: color_1,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            leading: Container(
              padding: EdgeInsets.only(right: 12.0),
              decoration: new BoxDecoration(
                  border: new Border(
                      right:
                          new BorderSide(width: 1.0, color: Colors.white24))),
              child: Icon(Icons.settings, color: Colors.white),
            ),
            title: Text(
              "Setting",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.keyboard_arrow_right,
                color: Colors.white, size: 30.0)),
        SizedBox(
          height: 2,
        ),
        ListTile(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(
              //                   builder: (context) {
              //                     return Login();
              //                   },
              //                 ));
            },
            selectedTileColor: Colors.lightGreenAccent,
            tileColor: color_1,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            leading: Container(
              padding: EdgeInsets.only(right: 12.0),
              decoration: new BoxDecoration(
                  border: new Border(
                      right:
                          new BorderSide(width: 1.0, color: Colors.white24))),
              child: Icon(LineIcons.playCircleAlt, color: Colors.white),
            ),
            title: Text(
              "How To Play",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.keyboard_arrow_right,
                color: Colors.white, size: 30.0)),
        SizedBox(
          height: 2,
        ),
        ListTile(
            onTap: () {},
            tileColor: color_1,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            leading: Container(
              padding: EdgeInsets.only(right: 12.0),
              decoration: new BoxDecoration(
                  border: new Border(
                      right:
                          new BorderSide(width: 1.0, color: Colors.white24))),
              child: Icon(Icons.menu_book, color: Colors.white),
            ),
            title: Text(
              "Game Rate",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.keyboard_arrow_right,
                color: Colors.white, size: 30.0)),
        SizedBox(
          height: 2,
        ),
        ListTile(
            onTap: () {},
            tileColor: color_1,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            leading: Container(
              padding: EdgeInsets.only(right: 12.0),
              decoration: new BoxDecoration(
                  border: new Border(
                      right:
                          new BorderSide(width: 1.0, color: Colors.white24))),
              child: Icon(Icons.rule, color: Colors.white),
            ),
            title: Text(
              "Notice Board / Rules",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.keyboard_arrow_right,
                color: Colors.white, size: 30.0)),
        SizedBox(
          height: 2,
        ),
        ListTile(
            onTap: () {},
            tileColor: color_1,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            leading: Container(
              padding: EdgeInsets.only(right: 12.0),
              decoration: new BoxDecoration(
                  border: new Border(
                      right:
                          new BorderSide(width: 1.0, color: Colors.white24))),
              child: Icon(Icons.logout_outlined, color: Colors.white),
            ),
            title: Text(
              "Logout",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.keyboard_arrow_right,
                color: Colors.white, size: 30.0))
      ],
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: color_1,
        elevation: 20,
        title: const Text('VR ONLINE'),
        actions: [
          Padding(
            padding: EdgeInsets.only(bottom: 3, top: 3, right: 3),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color:color_2,
                ),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      widget.balance.toString() + ' ₹',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Wallet();
                          },
                        ));
                      },
                      icon: Icon(Icons.account_balance_wallet_rounded,color: color_1,),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                )),
          )
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      drawer: new Drawer(
        child: drawerItems,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300]!,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: org,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: color_1,
              color: color_1,
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: LineIcons.history,
                  text: 'History',
                ),
                GButton(
                  icon: Icons.chat,
                  text: 'Chat',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
