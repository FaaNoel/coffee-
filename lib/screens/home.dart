import 'package:coffee_kk3/screens/search.dart';
import 'package:flutter/material.dart';
import 'package:coffee_kk3/widgets/slider_item.dart';
import 'package:coffee_kk3/util/voucher.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:coffee_kk3/util/menu.dart';
import 'package:coffee_kk3/widgets/grid_product.dart';
import 'package:coffee_kk3/widgets/menu_item.dart';

import 'listmenu.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin<Home> {
  bool isExpanded = false;
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }

  int _current = 0;
  double _height;
  double _width;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    super.build(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "Lokasi Kamu",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Icon(
                  Icons.location_on,
                  size: 13,
                  color: Colors.red,
                )
              ],
            ),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                    "Jl. Perintis Kenari...",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                ),
              ],
            ),
            SizedBox(height: 20.0,),


            //Slider Here

            CarouselSlider(
              height: MediaQuery.of(context).size.height / 4.9,
              items: map<Widget>(
                voucher,
                    (index, i) {
                  Map v = voucher[index];
                  return SliderItem(
                    img: v['img'],
                  );
                },
              ).toList(),
              autoPlay: true,
//                enlargeCenterPage: true,
              viewportFraction: 1.0,
//              aspectRatio: 2.0,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
            ),
            SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Paling banyak dicari",
                  style: TextStyle(
                    fontSize: 14, color: Color(0xff27AE60),
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),





            SizedBox(height: 10.0),

            ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: promo == null ? 0 :promo.length,
              itemBuilder: (BuildContext context, int index) {
//                Food food = Food.fromJson(foods[index]);
                Map food = promo[index];
//                print(foods);
//                print(foods.length);
                return CartItem(
                  img: food['img'],
                  isFav: false,
                  name: food['name'],
                  desc: food['desc'],
                  price: food['price'],
                );
              },
            ),
            SizedBox(height: 10.0,),
            FlatButton(
              height: 45,
              color: Colors.green,
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context){
                      return ListMenu();
                    },
                  ),
                );
              },
              textColor: Colors.white,
              child: Center(
                child: Text('MENU LAINNYA',style: TextStyle(
                  fontSize: 19,

                ),),

              ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            )





          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}