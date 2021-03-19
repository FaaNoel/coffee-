import 'package:coffee_kk3/screens/checkout.dart';
import 'package:coffee_kk3/screens/listmenu.dart';
import 'package:flutter/material.dart';
import 'package:coffee_kk3/util/const.dart';


class CartCheckout extends StatefulWidget {
  final String name;
  final String img;
  final String desc;
  final String price;
  final bool isFav;
  final double rating;
  final int raters;
  final int initNumber;
  final Function(int) counterCallback;
  final Function increaseCallback;
  final Function decreaseCallback;


  CartCheckout({
    Key key,
    @required this.name,
    @required this.img,
    @required this.desc,
    @required this.price,
    @required this.isFav,
    @required this.rating,
    @required this.raters,
    this.initNumber, this.counterCallback, this.increaseCallback, this.decreaseCallback})
      :super(key: key);

  @override
  _CartCheckoutState createState() => _CartCheckoutState();
}

class _CartCheckoutState extends State<CartCheckout> {
  int _currentCount;
  Function _counterCallback;
  Function _increaseCallback;
  Function _decreaseCallback;

  @override
  void initState() {
    _currentCount = widget.initNumber ?? 1;
    _counterCallback = widget.counterCallback ?? (int number) {};
    _increaseCallback = widget.increaseCallback ?? () {};
    _decreaseCallback = widget.decreaseCallback ?? () {};
    super.initState();
  }
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
                    "${widget.img}",
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
                  "${widget.name}",
                  style: TextStyle(
//                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                  ),
                ),




                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 130.0,),
                    _createIncrementDicrementButton(Icons.remove, () => _dicrement()),
                    Text(_currentCount.toString()),
                    _createIncrementDicrementButton(Icons.add, () => _increment()),
                  ],
                ),



                Row(
                  children: [
                    Text(
                      "${widget.price}",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(width: 90,),
                  ],
                ),



              ],

            ),
          ],

        ),
      ),
    );
  }
  void _increment() {
    setState(() {
      _currentCount++;
      _counterCallback(_currentCount);
      _increaseCallback();
    });
  }

  void _dicrement() {
    setState(() {
      if (_currentCount > 1) {
        _currentCount--;
        _counterCallback(_currentCount);
        _decreaseCallback();
      }
    });
  }

  Widget _createIncrementDicrementButton(IconData icon, Function onPressed) {
    return RawMaterialButton(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      constraints: BoxConstraints(minWidth: 35.0, minHeight: 25.0),
      onPressed: onPressed,
      elevation: 1.0,
      fillColor: Colors.white70,
      child: Icon(
        icon,
        color: Colors.black,
        size: 12.0,
      ),
      shape: CircleBorder(),
    );
  }
}