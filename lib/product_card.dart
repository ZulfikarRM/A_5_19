import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penjualan_liquid/detailPage.dart';

import 'data/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.itemIndex,
    required this.product,
  }) : super(key: key);
  final int itemIndex;
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 30),
          width: 320,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Container(
                width: 120,
                height: 120,
                child: Image.asset(product.image),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Rp ${product.price}"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return DetailPageFreebase(
                            ProductFreebase: products[itemIndex],
                          );
                        })));
                      },
                      child: Text("Detail Page"))
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class SaltNic extends StatelessWidget {
  const SaltNic({
    Key? key,
    required this.itemIndex,
    required this.product,
  }) : super(key: key);
  final int itemIndex;
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 30),
          width: 320,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Container(
                width: 120,
                height: 120,
                child: Image.asset(product.image),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Rp. ${product.price}"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return DetailPageSaltNic(
                            ProductSaltNic: product_saltNic[itemIndex],
                          );
                        })));
                      },
                      child: Text("Detail Page"))
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Freebase extends StatelessWidget {
  const Freebase({
    Key? key,
    required this.itemIndex,
    required this.product,
  }) : super(key: key);
  final int itemIndex;
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 30),
          width: 320,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Container(
                width: 120,
                height: 120,
                child: Image.asset(product.image),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Rp ${product.price}"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return DetailPageFreebase(
                            ProductFreebase: product_freebase[itemIndex],
                          );
                        })));
                      },
                      child: Text("Detail Page"))
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
