import 'package:e_commerce_final_test_app/Utils/productDetail.dart';
import 'package:flutter/material.dart';

import '../Utils/global.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0b819f),
        centerTitle: true,
        title: Text(
          "ClickShop",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Global.textColor,
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Populer For Men",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  populermen(category: "Men"),
                  Text(
                    "Populer For Women",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  populermen(category: "Women"),
                  Text(
                    "Populer For Kids",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  populermen(category: "Kids"),
                  Text(
                    "All Products",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  shop(category: "Man", Productname: "Man"),
                  shop(category: "Women", Productname: "Women"),
                  shop(category: "Kids", Productname: "Kids"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
