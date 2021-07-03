import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:game/Screens/config.dart';
// import 'package:flip_card/flip_card.dart';
// import 'package:scratcher/scratcher.dart';
// import 'Screens/config.dart';

class FirstScreen extends StatelessWidget {
  String time;
  String bidName;
  int bidnumber;
  String notification;
  FirstScreen(
      {Key? key,
      required this.time,
      required this.bidName,
      required this.bidnumber,
      required this.notification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(10),
                child: MaterialButton(
                  elevation: 7,
                  splashColor: Colors.black,
                  color: color_2,
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.monetization_on,
                          color: color_1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          "       Add Money      ",
                          style: TextStyle(
                            color: color_1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                )),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: const Offset(
                        2.0,
                        2.0,
                      ),
                      blurRadius: 4.0,
                      spreadRadius: 1.0,
                    ), //BoxShadow
                  ],
                ),
                height: 64,
                width: 120,
                alignment: Alignment.center,
                child: Text(
                  'WhatsApp \n \n 9999999999',
                  style: TextStyle(
                    color: color_1,
                    fontWeight: FontWeight.bold,
                  ),
                ))
          ],
        ),
      ),
      Container(
        child: SingleChildScrollView(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 100,
                  height: 100,
                  color: color_1,
                  child: Center(
                    child: Text('Suraj'),
                  ),
                );
              }),
        ),
      )
    ]));
  }
}
