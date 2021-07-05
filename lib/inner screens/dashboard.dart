import 'package:flutter/material.dart';
import 'package:game/Screens/config.dart';
import 'package:game/Screens/wallet/wallet.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
List<Image> images = [
  Image.asset('assets/images/poker-cards.png',),
  Image.asset('assets/images/patti.png'),
  Image.asset('assets/images/dice.png'),
  Image.asset('assets/images/poker-cards.png'),
  Image.asset('assets/images/patti.png'),
  Image.asset('assets/images/dice.png'),
  Image.asset('assets/images/poker-cards.png'),
  Image.asset('assets/images/patti.png'),
  Image.asset('assets/images/poker-cards.png',),
  Image.asset('assets/images/patti.png'),
  Image.asset('assets/images/dice.png'),
  Image.asset('assets/images/poker-cards.png'),
  Image.asset('assets/images/patti.png'),
  Image.asset('assets/images/dice.png'),
  Image.asset('assets/images/poker-cards.png'),
  
];
  
  List menuList = [
    _MenuItem( 'Single Ank'),
    _MenuItem( 'Jodi'),
    _MenuItem( 'Single Patti'),
    _MenuItem( 'Double Patti'),
    _MenuItem( 'Triple patti'),
    _MenuItem( 'Half Sangam'),
    _MenuItem( 'Full Sangam'),
    _MenuItem( 'Red Bracket'),
    _MenuItem( 'Even Odd'),
    _MenuItem( 'SP DP TP'),
    _MenuItem( 'Group Jodi'),
    _MenuItem( '2 Digit Panel'),
    _MenuItem( 'Panel Group'),
    _MenuItem( 'SP Motor'),
    _MenuItem( 'DP Motor'),
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time DashBoard'),
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
                      '250 ₹',
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, position) {
            return Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                    onTap: () {},
                    child: Center(
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.3,
                              height: MediaQuery.of(context).size.height*0.16,
                              
                              
                              // shape: RoundedRectangleBorder(
                              //     borderRadius: BorderRadius.circular(200.0)),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: shadow,
                                    offset: const Offset(
                                      2.0,
                                      2.0,
                                    ),
                                    blurRadius: 3.0,
                                    spreadRadius: 1.0,
                                  ),
                                ]
                              ),
                              // elevation: 5,
                              child: Column(
                                children:<Widget>[ Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Image(
                                    image:images[position].image,
                                    
                                    )
                                  ),
                                ),
                                
                                
                                ]
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                menuList[position].title,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize:18,
                                  color:Colors.black,
                                  // fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          
                                
                       
                        ],
                      ),
                    )));
          },
          itemCount: menuList.length,
        ),
      ),
    );
  }
}

class _MenuItem {
  // final IconData poker-cards.png;
  final String title;

  _MenuItem( this.title);
}


 class Items {
      String title;
      String subtitle;
      String event;
      String img;
      String routeName;
      Items({this.title, this.subtitle, this.event, this.img,this.routeName,});
    }