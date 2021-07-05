import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:game/Screens/config.dart';

import 'Screens/config.dart';
import 'Screens/config.dart';
import 'Screens/config.dart';
import 'Screens/config.dart';
import 'Screens/config.dart';
import 'Screens/config.dart';
import 'Screens/config.dart';
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
        body: Column(
          children: [
            Container(
              height: 150,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black45,
                        blurRadius: 16.0,
                        spreadRadius: 0.5,
                        offset: Offset(0.7, 0.7)
                    )
                  ]
              ),
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Earn While Playing',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text('Games, Play It, Win It and Feel It',
                        style: TextStyle(
                            fontSize: 18
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 15,),
                      ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              primary: color2
                          ),
                          child: Text('KALYAN STARTLINE')
                      ),
                      SizedBox(width: 10,),
                      ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              primary: color2
                          ),
                          child: Row(
                            children: [
                              Text('CASINO  |  '),
                              Column(
                                children: [
                                  Text('Coming '),
                                  Text('Soon')
                                ],
                              )
                            ],
                          )
                      ),
                    ],
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 3),
                            child: Text('Profit',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey
                              ),
                            ),
                          ),
                          SizedBox(width: 170,),
                          Text('7682829790',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Game(title: 'TIME', id: '450-99-360', status: 'Betting is Closed for all',clr: color1,),
                    Game(title: 'KALYAN', id: '268-8-****', status: 'Betting is Running for all',clr: color2,),
                    Game(title: 'MILAN DAY', id: '268-27-115', status: 'Betting is Closed for all',clr: color3,),
                    Game(title: 'KALYAN MORNING', id: '268-27-115', status: 'Betting is Running for all',clr: color4,),

                  ],
                ),
              ),
            )
          ],
        ),
    );
  }
}


class Game extends StatelessWidget {
  final String title;
  final String id;
  final String status;
  final  clr;
  const Game({required this.title,required this.id,required this.status, this.clr}) ;

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 150,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: clr,
          // border: Border.all(),
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
                color: Colors.black45,
                blurRadius: 16.0,
                spreadRadius: 0.3,
                offset: Offset(0.5, 0.5)
            )
          ]
      ),
      child: Row(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    primary: Colors.white
                ),
                child: Text('Play Game',style: TextStyle(color: Colors.blue),),
              ),
            ),
          ),
          SizedBox(width: 20,),
          Column(
            children: [
              SizedBox(height: 30,),
              Align(alignment: Alignment.centerLeft,child: Text(title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
              )),
              SizedBox(height: 10),
              Text(id),
              SizedBox(height: 10,),
              Text(status)
            ],
          ),
          SizedBox(width: 25,),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Icon(Icons.info,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
