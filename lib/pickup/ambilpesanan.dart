import 'dart:async';

import 'package:coffee_kk3/checkout/maintenance.dart';
import 'package:coffee_kk3/delivery/pesananselesai.dart';
import 'package:coffee_kk3/pickup/pesananselesai.dart';
import 'package:flutter/material.dart';


class AmbilPickup extends StatefulWidget {
  @override
  _ConfirmState createState() => _ConfirmState();
}

class _ConfirmState extends State<AmbilPickup> {
  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace,
          ),
          onPressed: ()=>Navigator.pop(context),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0,0,20,0),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextButton(
                    child: Text("37", style: TextStyle(
                      color: Colors.black,
                      fontSize: 200.0,
                      fontWeight: FontWeight.w600,
                    ),),
                    onPressed: (){Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context){
                          return PesananPickup();
                        },
                      ),
                    );},
                  )
                ],
              ),
            ),
            SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Pesanan siap dipickup",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Tunjukan nomor order untuk mengambil pesananmu",
                  style: TextStyle(
                    fontSize: 13,

                  ),
                ),
              ],
            ),

            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "  Coffee++ Store",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 10, 4),
              child: InkWell(
                onTap: (){

                },
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 1.0, right: 1.0),
                      child: Container(
                        height: MediaQuery.of(context).size.width/3.5,
                        width: MediaQuery.of(context).size.width/3.5,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            "assets/Logokopi.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          "Rita Super Mall",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),


                        Row(
                          children: <Widget>[
                            SizedBox(width: 10.0),


                          ],
                        ),

                        SizedBox(height: 10.0),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Jl. Jend. Soedirman No.296, Pereng,", textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 12,

                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Sokanegara, Kec. Purwokerto Timur.,", textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 12,

                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Kabupaten Banyumas, Jawa Tengah", textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 12,

                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "53116", textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 12,

                              ),
                            ),
                          ],
                        ),



                      ],

                    ),
                  ],
                ),
              ),
            ),





          ],
        ),
      ),
    );
  }
}
