import 'dart:async';

import 'package:coffee_kk3/checkout/maintenance.dart';
import 'package:coffee_kk3/delivery/prosespesanan.dart';
import 'package:coffee_kk3/screens/home.dart';
import 'package:coffee_kk3/screens/main_screen.dart';
import 'package:flutter/material.dart';

class Confirm extends StatefulWidget {
  @override
  _ConfirmState createState() => _ConfirmState();
}

class _ConfirmState extends State<Confirm> {
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
        builder: (context) => Proses()
    )
    );
  }
  initScreen (BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0,0,20,0),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            SizedBox(height: 120,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset("assets/konfirmasi.png"),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("Menunggu Konfirmasi Gerai", style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.w600,
                  ),)
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("Butuh beberapa waktu untuk gerai mengkonfirmasi pesanan-mu, mohon sabar ya!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize: 16.0,
                  ),)
                ],
              ),
            ),

            SizedBox(height: 100,),



          ],
        ),
      ),
    );
  }
}
