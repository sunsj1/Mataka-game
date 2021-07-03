import 'package:flutter/material.dart';
// import 'package:game/Screens/getpassword1.dart';

//import 'package:game/Screens/getpassword1.dart';
import 'package:game/Screens/homescreen.dart';
// import 'package:game/Screens/login.dart';
// import 'package:game/Screens/registration.dart';
// import 'package:game/Screens/splashscreen.dart';
//import 'package:game/firstScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MainScreen(balance: 500),
    );
  }
}
