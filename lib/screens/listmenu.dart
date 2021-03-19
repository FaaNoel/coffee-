import 'package:coffee_kk3/menu/dessert/listdessert.dart';
import 'package:coffee_kk3/menu/dessert/menudessert.dart';
import 'package:coffee_kk3/menu/noncoffee/listnoncoffee.dart';
import 'package:coffee_kk3/menu/noncoffee/menunoncoffee.dart';
import 'package:coffee_kk3/screens/order.dart';
import 'package:coffee_kk3/widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:coffee_kk3/menu/coffee/menucoffee.dart';
import 'package:coffee_kk3/menu/coffee/listcoffee.dart';
///import 'package:coffee_kk3/menu/dessert/listdessert.dart';
///import 'package:coffee_kk3/menu/dessert/listdessert.dart';

class ListMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Menu", style: TextStyle(
          color: Colors.white
        ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                "  Coffee",
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
              itemCount: coffee == null ? 0 :coffee.length,
              itemBuilder: (BuildContext context, int index) {
//                Food food = Food.fromJson(foods[index]);
                Map food = coffee[index];
//                print(foods);
//                print(foods.length);
                return CartCoffee(
                  img: food['img'],
                  isFav: false,
                  name: food['name'],
                  desc: food['desc'],
                  price: food['price'],
                );
              },
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "  Non-Coffee",
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
              itemCount: noncoffee == null ? 0 :noncoffee.length,
              itemBuilder: (BuildContext context, int index) {
//                Food food = Food.fromJson(foods[index]);
                Map food = noncoffee[index];
//                print(foods);
//                print(foods.length);
                return CartNonCoffee(
                  img: food['img'],
                  isFav: false,
                  name: food['name'],
                  desc: food['desc'],
                  price: food['price'],
                );
              },
            ),

            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "  Dessert",
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
              itemCount: dessert == null ? 0 :dessert.length,
              itemBuilder: (BuildContext context, int index) {
//                Food food = Food.fromJson(foods[index]);
                Map food = dessert[index];
//                print(foods);
//                print(foods.length);
                return CartDessert(
                  img: food['img'],
                  isFav: false,
                  name: food['name'],
                  desc: food['desc'],
                  price: food['price'],
                );
              },
            ),

          ],
        ),
      ),




    );
  }
}