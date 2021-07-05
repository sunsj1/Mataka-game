import 'package:flutter/material.dart';
// import 'package:game/Screens/getpassword1.dart';

//import 'package:game/Screens/getpassword1.dart';
import 'package:game/Screens/homescreen.dart';
import 'package:game/inner%20screens/dashboard.dart';
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
      home:DashboardPage(),
      routes: {
            // When navigating to the "/" route, build the FirstScreen widget.
    
            // '/single_patti': (context) => SinglePatti(),
            // '/double_patti': (context) => DoublePatti(),
            // '/triple_patti': (context) => TriplePatti(),
            // '/half_sangam': (context) => HalfSangam(),
            // '/full_sangam': (context) => FullSangam(),
            // '/even_odd': (context) => EvenOdd(),
            // '/sp_dp': (context) => SpDp(),
            // '/groupjodi': (context) => GroupJodi(),
            // '/two_digit': (context) => TwoDigit(),
            // '/panel_group': (context) => RedBracket(),
            // '/sp_motar': (context) => RedBracket(),
            // '/dp_motar': (context) => RedBracket(),
            
          },
    );
  }
}
