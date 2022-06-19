import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penjualan_liquid/controller/Controller.dart';
import 'package:penjualan_liquid/costum_alert.dart';
import 'package:penjualan_liquid/loginPage.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterController data = Get.find();
    final nama = TextEditingController(text: "${data.nama.value}");
    final alamat = TextEditingController(text: "${data.alamat.value}");

    final email = TextEditingController(text: "${data.email.value}");

    final pass = TextEditingController(text: "${data.password.value}");

    return Scaffold(
      appBar: AppBar(
        title: Text("My Profil"),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: 150,
                height: 150,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    image:
                        DecorationImage(image: AssetImage("assets/profil.jpg")),
                    borderRadius: BorderRadius.circular(75)),
              ),
              Container(
                width: 400,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 400,
                      child: TextField(
                        readOnly: true,
                        controller: nama,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), hintText: "Nama"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 400,
                      child: TextField(
                        readOnly: true,
                        controller: alamat,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), hintText: "Alamat"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 400,
                      child: TextField(
                        readOnly: true,
                        controller: email,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), hintText: "Email"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 400,
                      child: TextField(
                        readOnly: true,
                        controller: pass,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), hintText: "Password"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: ((context) {
                              return editProfil();
                            })));
                          },
                          child: Text("Edit Profil"),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.green[300],
                              primary: Colors.white),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        TextButton(
                          onPressed: () {
                            FirebaseFirestore.instance
                                .collection("users")
                                .doc(data.id.value)
                                .delete();
                            CustomAlert2(
                                context, "Yakin ingin menghapus akun?");
                          },
                          child: Text("Hapus Profil"),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.green[300],
                              primary: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class editProfil extends StatelessWidget {
  const editProfil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterController data = Get.find();
    CounterController control = Get.put(CounterController());
    final nama = TextEditingController();
    final alamat = TextEditingController();

    final email = TextEditingController();

    final pass = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("My Profil"),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: 300,
                height: 50,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    'Update Profil Anda',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: "poppins"),
                  ),
                ),
              ),
              Container(
                width: 150,
                height: 150,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    image:
                        DecorationImage(image: AssetImage("assets/profil.jpg")),
                    borderRadius: BorderRadius.circular(75)),
              ),
              Container(
                width: 400,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 400,
                      child: TextField(
                        controller: nama,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "${data.nama.value}"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 400,
                      child: TextField(
                        controller: alamat,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "${data.alamat.value}"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 400,
                      child: TextField(
                        controller: email,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "${data.email.value}"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 400,
                      child: TextField(
                        controller: pass,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "${data.password.value}"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              FirebaseFirestore.instance
                                  .collection("users")
                                  .doc("${data.id.value}")
                                  .update({
                                "nama": nama.text,
                                "alamat": alamat.text,
                                "password": pass.text,
                                "email": email.text
                              });

                              control.nama.value = nama.text;
                              control.email.value = email.text;
                              control.alamat.value = alamat.text;
                              control.password.value = pass.text;

                              FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                      email: email.text, password: pass.text)
                                  .then((value) => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ProfilPage())));
                            },
                            child: Text("Update"))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
