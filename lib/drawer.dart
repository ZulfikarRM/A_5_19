import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penjualan_liquid/controller/Controller.dart';
import 'package:penjualan_liquid/homePage.dart';
import 'package:penjualan_liquid/katalog.dart';
import 'package:penjualan_liquid/loginPage.dart';
import 'package:penjualan_liquid/tampilan_katalog.dart';

import 'profilPage.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // variable untuk menampung data yang login
    User? userAuth = FirebaseAuth.instance.currentUser;
    // variable yang menyimpan data di controller
    final CounterController control = Get.put(CounterController());
    // membuat folder di firestore
    CollectionReference user = FirebaseFirestore.instance.collection('users');
    return Drawer(
      backgroundColor: Color(0xff1f4690),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.white),
            child: Text(
              "Penjualan Liquid",
              style: TextStyle(
                  fontFamily: "poppins", fontSize: 20, color: Colors.black),
            ),
          ),
          ListTile(
            title: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Home Page',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => HomePage()));
            },
          ),
          SizedBox(
            height: 30,
          ),
          Divider(
            color: Colors.white,
          ),
          ListTile(
            title: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.shop_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Katalog',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_) => Tampilan_Katalog()));
            },
          ),
          SizedBox(
            height: 30,
          ),
          Divider(
            color: Colors.white,
          ),
          ListTile(
              title: Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Profil',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              onTap: () async {
                // final data yaitu variable untuk menampung data, yang di bandingkan
                // antara data yang di firestore dengan di login
                final data = await user
                    .where("email", isEqualTo: "${userAuth?.email}")
                    .get();
                data.docs.forEach((element) {
                  // untuk mnyimpan data di controller
                  control.id.value = element.id;
                  control.nama.value = element.get("nama");
                  control.email.value = element.get("email");
                  control.alamat.value = element.get("alamat");
                  control.password.value = element.get("password");
                });
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilPage()));
              }),
          SizedBox(
            height: 30,
          ),
          Divider(
            color: Colors.white,
          ),
          ListTile(
              title: Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_circle_up,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Log Out',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              onTap: () {
                // untuk logout
                FirebaseAuth.instance.signOut();
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return LoginPage();
                })));
              }),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
