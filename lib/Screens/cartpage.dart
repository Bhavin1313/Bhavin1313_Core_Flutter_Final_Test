import 'package:flutter/material.dart';

import '../Utils/productlist.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int TotalPrice = 0;
  int ProductPrice = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addedProducts.forEach((element) {
      ProductPrice = element['bq'] * element['price'] as int;
      TotalPrice = TotalPrice + ProductPrice as int;
    });
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0b819f),
        elevation: 0,
        title: Text(
          "Cart Page",
          style: TextStyle(
            color: Color(0xfffeae42),
          ),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Color(0xfffeae42),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: addedProducts.isNotEmpty
                  ? Column(
                      children: [
                        ...addedProducts
                            .map((e) => Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Container(
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
                                                borderRadius:
                                                    BorderRadius.circular(30),
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
                                                    left: 65,
                                                    top: 18,
                                                    bottom: 18,
                                                    right: 20),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text(
                                                      "${e['title']}",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Rs. ${e['bq'] * e['price']} ",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Quantity : ${e['bq']}",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 12,
                                                      ),
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
                                                Navigator.of(context).pushNamed(
                                                    'detailpage',
                                                    arguments: e);
                                              },
                                              child: Container(
                                                height: h * .1,
                                                width: w * .1,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.red,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      offset: Offset(1, 2),
                                                      spreadRadius: 1,
                                                      blurRadius: 2,
                                                      color: Colors.grey,
                                                    )
                                                  ],
                                                ),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      addedProducts.remove(e);
                                                      TotalPrice -= e['price'] *
                                                          e['bq'] as int;
                                                    });
                                                  },
                                                  child: Icon(
                                                    Icons.delete,
                                                    color: Colors.black,
                                                  ),
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
                                                  image: NetworkImage(
                                                      e['thumbnail']),
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
                                  ),
                                ))
                            .toList(),
                      ],
                    )
                  : Container(
                      height: 500,
                      width: 300,
                      child: Center(
                        child: Text("No Products Available"),
                      ),
                    ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              color: Color(0xff0b819f),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Totle Price ",
                        style: TextStyle(
                          color: Color(0xfffeae42),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Rs.${TotalPrice}",
                        style: TextStyle(
                          color: Color(0xfffeae42),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('checkout');
                    },
                    child: Container(
                      height: 40,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Color(0xfffeae42),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Checkout   ✒",
                        style: TextStyle(
                            color: Color(0xff202140),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
