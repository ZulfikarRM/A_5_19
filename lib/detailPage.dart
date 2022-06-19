import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:penjualan_liquid/costum_alert.dart';

import 'data/product.dart';

class DetailPageSaltNic extends StatefulWidget {
  DetailPageSaltNic({Key? key, required this.ProductSaltNic}) : super(key: key);
  final Product ProductSaltNic;
  @override
  State<DetailPageSaltNic> createState() => _DetailPageSaltNicState();
}

class _DetailPageSaltNicState extends State<DetailPageSaltNic> {
  int? _value = 1;
  int? _nilai = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Detail Produk")),
        body: ListView(children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(widget.ProductSaltNic.image)))),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.ProductSaltNic.title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Rp ${widget.ProductSaltNic.price}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${widget.ProductSaltNic.nicotin}",
                        overflow: TextOverflow.visible,
                      )
                    ],
                  ),
                ],
              ),
              Column(children: [
                Text(
                  "Pilih Ukuran Liquid",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                SizedBox(height: 20),
                Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xff263238), width: 0.1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 20, right: 20, left: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "15 ML",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Radio(
                            value: 1,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value as int?;
                              });
                            },
                          )
                        ],
                      ),
                    )),
                SizedBox(height: 10),
                Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xff263238), width: 0.1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 20, right: 20, left: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "30 ML",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Radio(
                            value: 2,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value as int?;
                              });
                            },
                          )
                        ],
                      ),
                    )),
                //
                SizedBox(height: 10),
              ]),
              Column(children: [
                Text(
                  "Pilih Nicotin",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                SizedBox(height: 20),
                Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xff263238), width: 0.1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 20, right: 20, left: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "3 MG",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Radio(
                            value: 1,
                            groupValue: _nilai,
                            onChanged: (value) {
                              setState(() {
                                _nilai = value as int?;
                              });
                            },
                          )
                        ],
                      ),
                    )),
                SizedBox(height: 10),
                Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xff263238), width: 0.1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 20, right: 20, left: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "6 MG",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Radio(
                            value: 2,
                            groupValue: _nilai,
                            onChanged: (value) {
                              setState(() {
                                _nilai = value as int?;
                              });
                            },
                          )
                        ],
                      ),
                    )),
                SizedBox(height: 10),
                Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xff263238), width: 0.1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 20, right: 20, left: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "9 MG",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Radio(
                            value: 3,
                            groupValue: _nilai,
                            onChanged: (value) {
                              setState(() {
                                _nilai = value as int?;
                              });
                            },
                          )
                        ],
                      ),
                    )),
                //
                SizedBox(height: 10),
              ])
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text("Yakin ingin memesan?"),
                            actions: [
                              TextButton(
                                  onPressed: () async {
                                    String nikotin;
                                    String ukuran = _value.toString() == "1"
                                        ? "15 ML"
                                        : "30 ML";
                                    if (_nilai.toString() == "1")
                                      nikotin = "3 MG";
                                    else if (_nilai.toString() == "2") {
                                      nikotin = "6 MG";
                                    } else {
                                      nikotin = "9 MG";
                                    }

                                    await FirebaseFirestore.instance
                                        .collection("PemesananSaltnic")
                                        .add({
                                      "nama": widget.ProductSaltNic.title,
                                      "harga": widget.ProductSaltNic.price,
                                      "ukuran": ukuran,
                                      "nicotin": nikotin,
                                    });
                                    Get.to(CustomAlert3(
                                        context, "Barang Sedang Dikirim"));
                                  },
                                  child: Text("OK")),
                              TextButton(
                                  onPressed: () => Get.back(),
                                  child: Text("CANCEL"))
                            ],
                          );
                        });
                  },
                  child: Text("Pesan"))
            ],
          ),
        ]));
  }
}

class DetailPageFreebase extends StatefulWidget {
  final Product ProductFreebase;
  const DetailPageFreebase({Key? key, required this.ProductFreebase})
      : super(key: key);

  @override
  State<DetailPageFreebase> createState() => _DetailPageFreebaseState();
}

class _DetailPageFreebaseState extends State<DetailPageFreebase> {
  int? _value = 1;
  int? _nilai = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Produk")),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("${widget.ProductFreebase.image}"))),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.ProductFreebase.title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Rp ${widget.ProductFreebase.price}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("${widget.ProductFreebase.nicotin}")
                    ],
                  ),
                ],
              ),
              Column(children: [
                Text(
                  "Pilih Ukuran Liquid",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                SizedBox(height: 20),
                Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xff263238), width: 0.1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 20, right: 20, left: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "60 ML",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Radio(
                            value: 1,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value as int?;
                              });
                            },
                          )
                        ],
                      ),
                    )),
                SizedBox(height: 10),
                Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xff263238), width: 0.1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 20, right: 20, left: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "100 ML",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Radio(
                            value: 2,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value as int?;
                              });
                            },
                          )
                        ],
                      ),
                    )),
                //
                SizedBox(height: 10),
              ]),
              Column(children: [
                Text(
                  "Pilih Nicotin",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                SizedBox(height: 20),
                Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xff263238), width: 0.1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 20, right: 20, left: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "15 MG",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Radio(
                            value: 1,
                            groupValue: _nilai,
                            onChanged: (value) {
                              setState(() {
                                _nilai = value as int?;
                              });
                            },
                          )
                        ],
                      ),
                    )),
                SizedBox(height: 10),
                Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xff263238), width: 0.1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 20, right: 20, left: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "30 MG",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Radio(
                            value: 2,
                            groupValue: _nilai,
                            onChanged: (value) {
                              setState(() {
                                _nilai = value as int?;
                              });
                            },
                          )
                        ],
                      ),
                    )),
                SizedBox(height: 10),
                Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xff263238), width: 0.1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 20, right: 20, left: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "60 MG",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Radio(
                            value: 3,
                            groupValue: _nilai,
                            onChanged: (value) {
                              setState(() {
                                _nilai = value as int?;
                              });
                            },
                          )
                        ],
                      ),
                    )),
                //
                SizedBox(height: 10),
              ])
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text("Yakin ingin memesan?"),
                            actions: [
                              TextButton(
                                  onPressed: () async {
                                    String nikotin;
                                    String ukuran = _value.toString() == "1"
                                        ? "60 ML"
                                        : "100 ML";
                                    if (_nilai.toString() == "1")
                                      nikotin = "15 MG";
                                    else if (_nilai.toString() == "2") {
                                      nikotin = "30 MG";
                                    } else {
                                      nikotin = "60 MG";
                                    }

                                    await FirebaseFirestore.instance
                                        .collection("PemesananFreebase")
                                        .add({
                                      "nama": widget.ProductFreebase.title,
                                      "harga": widget.ProductFreebase.price,
                                      "ukuran": ukuran,
                                      "nicotin": nikotin,
                                    });
                                    Get.to(CustomAlert3(
                                        context, "Barang Sedang Dikirim"));
                                  },
                                  child: Text("OK")),
                              TextButton(
                                  onPressed: () => Get.back(),
                                  child: Text("CANCEL"))
                            ],
                          );
                        });
                  },
                  child: Text("Pesan"))
            ],
          )
        ],
      ),
    );
  }
}
