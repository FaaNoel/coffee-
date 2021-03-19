import 'dart:async';

import 'package:coffee_kk3/checkout/maintenance.dart';
import 'package:flutter/material.dart';

import 'antarpesanan.dart';

class Proses extends StatefulWidget {
  @override
  _ConfirmState createState() => _ConfirmState();
}

class _ConfirmState extends State<Proses> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = new Duration(seconds: 6);
    return new Timer(duration, route);
  }
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => Antar()
    )
    );
  }
  initScreen (BuildContext context) {
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
                  Image.asset("assets/proses.png"),
                ],
              ),
            ),



            Card(
              elevation: 1.0,
              child: Container(

                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: <Widget>[


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Padding(
                          padding: EdgeInsets.fromLTRB(10,5,5,5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                                  Text(
                                    "Estimasi waktu pembuatan",
                                    style: TextStyle(

                                      fontSize: 12, color: Colors.grey,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                              SizedBox(height: 10.0,),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "14.00 - 14.15",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 10.0,),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.circle,
                                    size: 14,
                                    color: Colors.blueAccent,
                                  ),
                                  Text(
                                    "  Pesanan sedang diproses",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 10.0,),
                              Text(
                                "Pesanan sedang dibikinin nih! Pesanan akan",
                                style: TextStyle(

                                  fontSize: 12, color: Colors.grey,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text(
                                "segera dikirim ke lokasimu",
                                style: TextStyle(

                                  fontSize: 12, color: Colors.grey,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ),


                      ],
                    ),



                  ],
                ),

                height: 130,
              ),
            ),


          ],
        ),
      ),
    );
  }
}
