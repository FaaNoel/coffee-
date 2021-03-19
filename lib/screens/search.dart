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
class Search extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Search> {
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
          "Store Terdekat", style: TextStyle(
            color: Colors.white
        ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0,0,20,0),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.black38.withAlpha(10),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Cari Store Pilihanmu",
                        hintStyle: TextStyle(
                          color: Colors.black.withAlpha(120),
                        ),
                        border: InputBorder.none,
                      ),
                      onChanged: (String keyword) {},
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.black.withAlpha(120),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "  Rita Super Mall",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("Jl. Jend. Soedirman No.296, Pereng, Sokanegara, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53116",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.0,
                    ),)
                ],
              ),
            ),
            Divider(thickness: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "  Moro Mall",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("Jl. Situmpur, Kongsen, Purwokerto Kulon, Kec. Purwokerto Sel., Kabupaten Banyumas, Jawa Tengah 53141",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.0,
                    ),)
                ],
              ),
            ),
            Divider(thickness: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "  Living Plaza",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("Jl. Jend. Soedirman, Kauman Lama, simpang ISOLA, East Purwokerto, Banyumas, Central Java 53116",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.0,
                    ),)
                ],
              ),
            ),
            Divider(thickness: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "  Komplek Kebondalem",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("Jl. Jendral Suprapto, Kebondalem, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.0,
                    ),)
                ],
              ),
            ),
            Divider(thickness: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "  Outlet Gor Satria",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("Jl. Prof. Dr. Suharso, Mangunjaya, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53121",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.0,
                    ),)
                ],
              ),
            ),
            Divider(thickness: 2,),




          ],
        ),
      ),
      bottomSheet: FlatButton(
        height: 55.0,
        minWidth: 500.0,

        color: Theme.of(context).accentColor,
        child: Text(
          "Konfirmasi".toUpperCase(),
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: () => Navigator.pop(context),

      ),

    );
  }
}
