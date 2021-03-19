import 'package:coffee_kk3/menu/historylist.dart';
import 'package:coffee_kk3/menu/listhistory.dart';
import 'package:coffee_kk3/util/menu.dart';
import 'package:coffee_kk3/widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:coffee_kk3/menu/coffee/menucoffee.dart';
import 'package:coffee_kk3/menu/coffee/listcoffee.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Hari Ini",
                  style: TextStyle(
                    fontSize: 18, color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                ),],
            ),
            SizedBox(height: 20.0,),

            ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: historyitem == null ? 0 :historyitem.length,
              itemBuilder: (BuildContext context, int index) {
//                Food food = Food.fromJson(foods[index]);
                Map food = historyitem[index];
//                print(foods);
//                print(foods.length);
                return HistoryItem(
                  img: food['img'],
                  isFav: false,
                  name: food['name'],
                  desc: food['desc'],
                  price: food['price'],
                  rating: 5.0,
                  raters: 23,
                );
              },
            ),
            SizedBox(height: 20.0,),

          ],
        ),
      ),


    );
  }
}