import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:penjualan_liquid/katalog.dart';

class Tampilan_Katalog extends StatelessWidget {
  const Tampilan_Katalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Katalog",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      backgroundColor: Color(0xff1f4690),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Freebase",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => katalogFreebase()));
            },
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/vape8.jpg"))),
            ),
          ),
          Text(
            "Salt Nic",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => katalogSaltNic()));
            },
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/vape7.jpg"))),
            ),
          ),
        ],
      )),
    );
  }
}
