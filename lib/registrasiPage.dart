import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:penjualan_liquid/loginPage.dart';

class RegistrasiPage extends StatefulWidget {
  const RegistrasiPage({Key? key}) : super(key: key);

  @override
  State<RegistrasiPage> createState() => _RegistrasiPageState();
}

class _RegistrasiPageState extends State<RegistrasiPage> {
  CollectionReference users = FirebaseFirestore.instance.collection("users");
  final namaController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final alamatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Register",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins"),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 50,
                ),
                TextField(
                  controller: namaController,
                  decoration: InputDecoration(
                      hintText: "Full Name",
                      hintStyle: TextStyle(fontFamily: "Poppins")),
                ),
                TextField(
                  controller: alamatController,
                  decoration: InputDecoration(
                      hintText: "Alamat",
                      hintStyle: TextStyle(fontFamily: "Poppins")),
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(fontFamily: "Poppins")),
                ),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(fontFamily: "Poppins")),
                ),
              ],
            ),
          ),
          SizedBox(height: 35),
          Column(
            children: [
              Container(
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(150)),
                child: TextButton(
                  onPressed: () {
                    users.add({
                      "nama": namaController.text,
                      "email": emailController.text,
                      "password": passwordController.text,
                      "alamat": alamatController.text
                    });
                    FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text)
                        .then((value) => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage())));
                  },
                  child: Text(
                    "Create Account",
                    style:
                        TextStyle(color: Colors.white, fontFamily: "Poppins"),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
