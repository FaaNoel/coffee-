import 'package:carousel_slider/carousel_slider.dart';
import 'package:coffee_kk3/util/voucher.dart';
import 'package:coffee_kk3/widgets/slider_item.dart';
import 'package:flutter/material.dart';

class PromoScreen extends StatefulWidget {

  @override
  _PromoScreenState createState() => _PromoScreenState();
}

class _PromoScreenState extends State<PromoScreen> {
  bool isExpanded = false;
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }

  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: ListView(
          children: <Widget>[
            RaisedButton(
              color: Colors.green,

              onPressed: (){


              },
              textColor: Colors.white,
              child: Center(
                child: Text('Masukan Kode Promo disini.'),
              ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            ),

            Divider(),

            Container(
              height: MediaQuery.of(context).size.height / 5.2,
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  "assets/voucher1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: MediaQuery.of(context).size.height / 5.2,
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  "assets/voucher2.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: MediaQuery.of(context).size.height / 5.2,
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  "assets/vocuher3.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 30,),




          ],
        ),
      ),
    );
  }
}
