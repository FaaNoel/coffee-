import 'package:coffee_kk3/screens/home.dart';
import 'package:coffee_kk3/screens/main_screen.dart';
import 'package:flutter/material.dart';

class Maintenance extends StatefulWidget {
  @override
  _MaintenanceState createState() => _MaintenanceState();
}

class _MaintenanceState extends State<Maintenance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0,0,20,0),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset("assets/maap.png"),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("MAAF", style: TextStyle(
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
                  Text("Pesanan kamu tidak bisa kami layani saat ini.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),)
                ],
              ),
            ),

            SizedBox(height: 100,),

            RaisedButton(
              color: Colors.green,
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context){
                      return MainScreen();
                    },
                  ),
                );
              },
              textColor: Colors.white,
              child: Center(
                child: Text('Kembali Ke Menu'),
              ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            )


          ],
        ),
      ),
    );
  }
}
