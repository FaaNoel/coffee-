import 'package:coffee_kk3/screens/checkout.dart';
import 'package:coffee_kk3/screens/listmenu.dart';
import 'package:coffee_kk3/screens/order.dart';
import 'package:flutter/material.dart';
import 'package:coffee_kk3/util/const.dart';


class CartCoffee extends StatelessWidget {
  final String name;
  final String img;
  final String desc;
  final String price;
  final bool isFav;
  final double rating;
  final int raters;


  CartCoffee({
    Key key,
    @required this.name,
    @required this.img,
    @required this.desc,
    @required this.price,
    @required this.isFav,
    @required this.rating,
    @required this.raters})
      :super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
      child: InkWell(
        onTap: (){

        },
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 1.0, right: 10.0),
              child: Container(
                height: MediaQuery.of(context).size.width/4,
                width: MediaQuery.of(context).size.width/4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    "$img",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "$name",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ),
                ),


                Row(
                  children: <Widget>[
                    SizedBox(width: 10.0),


                  ],
                ),

                SizedBox(height: 10.0),

                Row(
                  children: [
                    Text(
                      "$price",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(width: 80,),

                    ButtonTheme(
                      minWidth: 60.0,
                      height: 30.0,
                      child: RaisedButton(
                        color: Colors.green,
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context){
                                return Checkout();
                              },
                            ),
                          );
                        },
                        child: Text("Beli",
                          style: TextStyle(
                              color: Colors.white
                          ),),
                      ),
                    ),
                  ],
                ),



              ],

            ),
          ],
        ),
      ),
    );
  }
}