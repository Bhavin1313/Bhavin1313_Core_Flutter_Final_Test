import 'dart:math';

import 'package:e_commerce_final_test_app/Utils/productlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget shop({
  required String category,
  required String Productname,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Builder(
        builder: (context) {
          double h = MediaQuery.of(context).size.height;
          double w = MediaQuery.of(context).size.width;
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                ...AllProducts.map((e) => Container(
                      height: h * 0.14,
                      width: w * .90,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Stack(
                          children: [
                            Center(
                              child: Container(
                                height: h * 0.14,
                                width: w * .75,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(1, 2),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 65, top: 18, bottom: 18, right: 20),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        e['title'],
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        e['brand'],
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "Rs. ${e['price']}",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 18,
                              left: 320,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('detailpage', arguments: e);
                                },
                                child: Container(
                                  height: h * .1,
                                  width: w * .1,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blueGrey,
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(1, 2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.grey,
                                      )
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 18,
                              right: 285,
                              child: Container(
                                height: h * .1,
                                width: w * .2,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                  image: DecorationImage(
                                    image: NetworkImage(e['thumbnail']),
                                    fit: BoxFit.cover,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(1, 2),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )).toList(),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          );
        },
      ),
    ],
  );
}

Widget populerwomen({
  required String category,
  required String Productname,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Builder(
        builder: (context) {
          double h = MediaQuery.of(context).size.height;
          double w = MediaQuery.of(context).size.width;
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                ...AllProducts.map((e) => Container(
                      height: h * 0.14,
                      width: w * .90,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Stack(
                          children: [
                            Center(
                              child: Container(
                                height: h * 0.14,
                                width: w * .75,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(1, 2),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 65, top: 18, bottom: 18, right: 20),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        e['title'],
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        e['brand'],
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "Rs. ${e['price']}",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 18,
                              left: 320,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('detailpage', arguments: e);
                                },
                                child: Container(
                                  height: h * .1,
                                  width: w * .1,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blueGrey,
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(1, 2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.grey,
                                      )
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 18,
                              right: 285,
                              child: Container(
                                height: h * .1,
                                width: w * .2,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                  image: DecorationImage(
                                    image: NetworkImage(e['thumbnail']),
                                    fit: BoxFit.cover,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(1, 2),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )).toList(),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          );
        },
      ),
    ],
  );
}

Widget populerchild({
  required String category,
  required String Productname,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Builder(
        builder: (context) {
          double h = MediaQuery.of(context).size.height;
          double w = MediaQuery.of(context).size.width;
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                ...AllProducts.map((e) => Container(
                      height: h * 0.14,
                      width: w * .90,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Stack(
                          children: [
                            Center(
                              child: Container(
                                height: h * 0.14,
                                width: w * .75,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(1, 2),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 65, top: 18, bottom: 18, right: 20),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        e['title'],
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        e['brand'],
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "Rs. ${e['price']}",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 18,
                              left: 320,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('detailpage', arguments: e);
                                },
                                child: Container(
                                  height: h * .1,
                                  width: w * .1,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blueGrey,
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(1, 2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.grey,
                                      )
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 18,
                              right: 285,
                              child: Container(
                                height: h * .1,
                                width: w * .2,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                  image: DecorationImage(
                                    image: NetworkImage(e['thumbnail']),
                                    fit: BoxFit.cover,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(1, 2),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )).toList(),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          );
        },
      ),
    ],
  );
}

Widget populermen({
  required String category,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Builder(
        builder: (context) {
          double h = MediaQuery.of(context).size.height;
          double w = MediaQuery.of(context).size.width;
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                ...PopulerProductsMen.map((e) => Container(
                      height: h * 0.14,
                      width: w * .90,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Stack(
                          children: [
                            Center(
                              child: Container(
                                height: h * 0.14,
                                width: w * .75,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(1, 2),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 65, top: 18, bottom: 18, right: 20),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        e['title'],
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        e['brand'],
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "Rs. ${e['price']}",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 18,
                              left: 320,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('detailpage', arguments: e);
                                },
                                child: Container(
                                  height: h * .1,
                                  width: w * .1,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blueGrey,
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(1, 2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        color: Colors.grey,
                                      )
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 18,
                              right: 285,
                              child: Container(
                                height: h * .1,
                                width: w * .2,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                  image: DecorationImage(
                                    image: NetworkImage(e['thumbnail']),
                                    fit: BoxFit.cover,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(1, 2),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )).toList(),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          );
        },
      ),
    ],
  );
}
