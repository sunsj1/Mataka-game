import 'package:flutter/material.dart';
import 'package:game/Screens/config.dart';
import 'package:game/Screens/login.dart';
//import 'package:game/Screens/config.dart';
import 'dart:async';

//import 'package:game/firstScreen.dart';



class SplashScreen extends StatefulWidget {
  

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 7),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) =>Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            
            height:MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: grd),

                    
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor:Colors.white,
                          radius: 70.0,
                          child: Icon(
                            Icons.monetization_on,
                            color:Colors.red[800],
                            size: 130,
                            
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        Text(
                          'RS GAMES',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(),
                      Padding(padding: EdgeInsets.only(top: 20.0)),
                      Text(
                        '  Best Deal \n For Everyone',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}