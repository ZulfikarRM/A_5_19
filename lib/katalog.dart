import 'package:flutter/material.dart';
import 'package:penjualan_liquid/detailPage.dart';
import 'package:penjualan_liquid/drawer.dart';
import 'package:penjualan_liquid/profilPage.dart';
import 'package:penjualan_liquid/product_card.dart';

import 'data/product.dart';
import 'homePage.dart';

class katalogFreebase extends StatelessWidget {
  const katalogFreebase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Katalog Freebase",
          style: TextStyle(color: Colors.black, fontFamily: "Poppins"),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Color(0xff1f4690),
      drawer: MyDrawer(),
      body: SafeArea(
        child: ListView.builder(
          itemCount: product_freebase.length,
          itemBuilder: (context, index) => Freebase(
            itemIndex: index,
            // untuk produk_freebase
            product: product_freebase[index],
          ),
        ),
      ),
    );
  }
}

class katalogSaltNic extends StatelessWidget {
  const katalogSaltNic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Katalog Sat Nic",
          style: TextStyle(color: Colors.black, fontFamily: "Poppins"),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Color(0xff1f4690),
      drawer: MyDrawer(),
      body: SafeArea(
        child: ListView.builder(
          itemCount: product_saltNic.length,
          itemBuilder: (context, index) => SaltNic(
            itemIndex: index,
            // untuk produk salt_nic
            product: product_saltNic[index],
          ),
        ),
      ),
    );
  }
}
