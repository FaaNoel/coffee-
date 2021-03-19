import 'dart:async';

import 'package:coffee_kk3/checkout/maintenance.dart';
import 'package:coffee_kk3/delivery/pesananselesai.dart';
import 'package:flutter/material.dart';

class Antar extends StatefulWidget {
  @override
  _ConfirmState createState() => _ConfirmState();
}

class _ConfirmState extends State<Antar> {
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
    var duration = new Duration(seconds: 10);
    return new Timer(duration, route);
  }
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => PesananSelesai()
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
                  Image.asset("assets/antar.png"),
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
                                "Estimasi waktu driver sampai lokasimu",
                                style: TextStyle(

                                  fontSize: 12, color: Colors.grey,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(height: 10.0,),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "14.20 - 14.35",
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
                                    "  Dalam Perjalanan",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 10.0,),
                              Text(
                                "Driver sedang melakukan perjalanan untuk ke lokasi,",
                                style: TextStyle(

                                  fontSize: 12, color: Colors.grey,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text(
                                "Mohon tunggu Driver sampai",
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
