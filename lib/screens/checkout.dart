import 'package:coffee_kk3/checkout/confirm.dart';
import 'package:coffee_kk3/menu/checkoutmenu.dart';
import 'package:coffee_kk3/menu/dessert/menudessert.dart';
import 'package:coffee_kk3/menu/list.dart';
import 'package:coffee_kk3/util/menu.dart';
import 'package:coffee_kk3/widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:coffee_kk3/menu/coffee/menucoffee.dart';
import 'package:coffee_kk3/menu/coffee/listcoffee.dart';

import 'order.dart';
class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
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
          "Konfirmasi Pesanan", style: TextStyle(
            color: Colors.white
        ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 70),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Pesananmu",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                FlatButton(
                  child: Text(
                    "Tambah lagi",
                    style: TextStyle(
                      fontSize: 16,
//                      fontWeight: FontWeight.w800,

                    ),
                  ),
                  onPressed: (){},
                ),
              ],
            ),

            ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: checkout == null ? 0 :checkout.length,
              itemBuilder: (BuildContext context, int index) {
//                Food food = Food.fromJson(foods[index]);
                Map food = checkout[index];
//                print(foods);
//                print(foods.length);
                return CartCheckout(
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

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Pembayaran",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                FlatButton(
                  child: Text(
                    "Tunai",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
//                      fontWeight: FontWeight.w800,

                    ),
                  ),
                  onPressed: (){},
                ),
              ],
            ),

            Ink(
              color: Color(0xfff6f6f6),
              child: ListTile(

                title: Text(
                  "Voucher",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.keyboard_arrow_right,
                    size: 20.0,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                  tooltip: "Edit",
                ),
              ),
            ),
            SizedBox(height: 20.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Detail Pembayaran",
                  style: TextStyle(
                    fontSize: 18, color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                ),],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Harga",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                FlatButton(
                  child: Text(
                    "Rp 35.000",
                    style: TextStyle(
                      fontSize: 15,
//                      fontWeight: FontWeight.w800,

                    ),
                  ),
                  onPressed: (){},
                ),
              ],
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Total Pembayaran ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                FlatButton(
                  child: Text(
                    "Rp 35.000",
                    style: TextStyle(
                      fontSize: 15,
//                      fontWeight: FontWeight.w800,

                    ),
                  ),
                  onPressed: (){},
                ),
              ],
            ),



          ],
        ),
      ),

      bottomSheet: FlatButton(
        height: 55.0,
        minWidth: 500.0,

        color: Theme.of(context).accentColor,
        child: Text(
          "Pesan Sekarang".toUpperCase(),
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context){
                return Order();
              },
            ),
          );
        },
      ),



    );
  }
}
