import 'package:flutter/material.dart';
import 'package:penjualan_liquid/data/product.dart';
import 'package:penjualan_liquid/drawer.dart';
import 'package:penjualan_liquid/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Home Page",
            style: TextStyle(color: Colors.black, fontFamily: "Poppins"),
          ),
          centerTitle: true,
          backgroundColor: Colors.white),
      backgroundColor: Color(0xff1f4690),
      drawer: MyDrawer(),
      body: SafeArea(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) => ProductCard(
            itemIndex: index,
            product: products[index],
          ),
        ),
      ),
    );
  }
}
