import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:penjualan_liquid/homePage.dart';
import 'package:penjualan_liquid/loginPage.dart';

class Transaksi extends StatefulWidget {
  const Transaksi({Key? key}) : super(key: key);

  @override
  State<Transaksi> createState() => _TransaksiState();
}

class _TransaksiState extends State<Transaksi> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) {
          return HomePage();
        }),
      );
    });
  }

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
            "https://assets1.lottiefiles.com/packages/lf20_jmejybvu.json"),
      ),
    );
  }
}
