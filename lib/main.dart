import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penjualan_liquid/loginPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    SplashScreenStart();
  }

  SplashScreenStart() {
    var durasi = Duration(seconds: 8);
    return Timer(durasi, () {
      Get.to(LoginPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1F4690),
      body: ListView(
        children: [
          Column(
            children: [
              // SizedBox(height: 50),
              Image.asset(
                "assets/logo.png",
                width: 500,
                height: 500,
              ),
              // SizedBox(height: 50),
              Text(
                "Liquid.Ne",
                style: TextStyle(
                    fontFamily: "FredokaOne",
                    fontSize: 30,
                    color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
