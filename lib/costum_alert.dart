import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penjualan_liquid/loginPage.dart';
import 'package:penjualan_liquid/transaksi.dart';

Future<dynamic> CustomAlert2(BuildContext context, String pesan) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(pesan),
          actions: [
            TextButton(onPressed: () => Get.to(LoginPage()), child: Text("OK")),
            TextButton(onPressed: () => Get.back(), child: Text("CANCEL"))
          ],
        );
      });
}

Future<dynamic> CustomAlert3(BuildContext context, String pesan) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(pesan),
          actions: [
            TextButton(onPressed: () => Get.to(Transaksi()), child: Text("OK")),
          ],
        );
      });
}
