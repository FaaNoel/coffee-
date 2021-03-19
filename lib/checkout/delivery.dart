import 'package:coffee_kk3/screens/checkout.dart';
import 'package:coffee_kk3/screens/search.dart';
import 'package:flutter/material.dart';

import 'confirm.dart';

class Delivery extends StatefulWidget {
  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
      padding: EdgeInsets.fromLTRB(20.0,0,20,0),
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset("assets/kedaikopi.png"
                    ,
                    ),
                    Card(
                      elevation: 4.0,
                      child: Container(

                        child: ListView(
                          physics: NeverScrollableScrollPhysics(),
                          children: <Widget>[


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[

                                Padding(
                                  padding: EdgeInsets.fromLTRB(5,5,5,5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            "Pesananmu dikirim dari",
                                            style: TextStyle(
                                              fontSize: 14, color: Colors.black,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.location_on,
                                            size: 18,
                                            color: Colors.red,
                                          ),
                                          TextButton(
                                            child: Text(
                                              "Rita Super Mall", textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w800
                                              ),
                                            ),
                                            onPressed: (){Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (BuildContext context){
                                                  return Search();
                                                },
                                              ),
                                            );},
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.circle,
                                            size: 14,
                                            color: Colors.black,
                                          ),
                                          Text(
                                            "  Tentukan lokasi pesanan dikirim",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 20.0,),
                                    ],
                                  ),
                                ),


                              ],
                            ),



                          ],
                        ),

                        height: 100,
                      ),
                    ),
                  ],
              ),
          ),


        ],
      ),
      ),
      bottomSheet: FlatButton(
        height: 55.0,
        minWidth: 500.0,

        color: Theme.of(context).accentColor,
        child: Text(
          "Konfirmasi Pesanan".toUpperCase(),
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context){
                return Confirm();
              },
            ),
          );
        },
      ),
    );
  }
}
