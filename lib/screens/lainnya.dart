import 'package:coffee_kk3/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(15.0,0,15.0,0),

        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Image.asset(
                    "assets/avatar.png",
                    fit: BoxFit.cover,
                    width: 100.0,
                    height: 100.0,
                  ),
                ),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Dhea Fesa",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 5.0),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "dheafs@gmail.com",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 20.0),

                    ],
                  ),
                  flex: 3,
                ),
              ],
            ),

            Divider(),
            Container(height: 15.0),



            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListTile(
                leading: ImageIcon(
                  AssetImage("assets/akun.png"),
                  color: Colors.black,
                  size: 30,
                ),
                title: Text(
                  "Informasi Pribadi",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: Text(
                  "No.Telp, Email, Alamat, Biografi.",
                  style: TextStyle(
                    fontSize: 11.9
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
            Divider(height: 0,),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListTile(
                leading: ImageIcon(
                  AssetImage('assets/sandi.png'),
                  color: Colors.black,
                ),
                title: Text(
                  "Kata Sandi",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: Text(
                  "Mengubah kata sandi",
                  style: TextStyle(
                      fontSize: 11.9
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
            Divider(height: 0,),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListTile(
                leading: ImageIcon(
                  AssetImage('assets/cc.png'),
                  color: Colors.black,
                ),
                title: Text(
                  "Pembayaran",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: Text(
                  "Informasi kartu kredit",
                  style: TextStyle(
                      fontSize: 11.9
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
            Divider(height: 0,),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListTile(
                leading: ImageIcon(
                   AssetImage('assets/riwayat.png'),
                  color: Colors.black,
                ),
                title: Text(
                  "Riwayat Transaksi",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: Text(
                  "Transaksi dan Pembelian",
                  style: TextStyle(
                      fontSize: 11.9
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
            SizedBox(height: 10.0,),

            Padding(
              padding: const EdgeInsets.only(left: 1),
              child: ListTile(
                leading: IconButton(
                  icon: ImageIcon(
                    AssetImage('assets/keluar.png'),
                    size: 25.0,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                  tooltip: "Keluar",
                ),
                title: Text(
                  "Keluar",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.red
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}