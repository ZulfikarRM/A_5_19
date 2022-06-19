import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:penjualan_liquid/homePage.dart';
import 'package:penjualan_liquid/registrasiPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailCtrl = TextEditingController();
    final passCtrl = TextEditingController();
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign In",
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
                  controller: emailCtrl,
                  decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(fontFamily: "Poppins")),
                ),
                TextField(
                  controller: passCtrl,
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(fontFamily: "Poppins")),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                )
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
                    FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: emailCtrl.text, password: passCtrl.text);
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return HomePage();
                    })));
                  },
                  child: Text(
                    "Login",
                    style:
                        TextStyle(color: Colors.white, fontFamily: "Poppins"),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(150)),
                child: TextButton(
                  onPressed: () {
                    FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: emailCtrl.text, password: passCtrl.text);
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return RegistrasiPage();
                    })));
                  },
                  child: Text(
                    "Register",
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
