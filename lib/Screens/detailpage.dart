import 'package:flutter/material.dart';

import '../Utils/productlist.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0b819f),
        title: Text(
          data['title'],
          style: TextStyle(
            color: Color(0xfffeae42),
          ),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Color(0xfffeae42),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...data['images']
                      .map(
                        (e) => Container(
                          height: h * .70,
                          width: w * .9,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(e),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(12),
                height: h * .4,
                width: w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 15,
                      spreadRadius: 2,
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          data['title'],
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff202140),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Brand",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff202140),
                              ),
                            ),
                            Text(
                              "${data['brand']}",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Text(
                              "Stock",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff202140),
                              ),
                            ),
                            Text(
                              "${data['stock']}",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff202140),
                      ),
                    ),
                    Container(
                      height: h * .1,
                      width: w * 9,
                      child: SingleChildScrollView(
                        child: Text(
                          "${data['description']}",
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: h * .055,
                            width: w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                            ),
                            alignment: Alignment.center,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomLeft: Radius.circular(15),
                                      ),
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          (data['bq'] <= 1)
                                              ? data['bq'] == 1
                                              : data['bq']--;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.remove,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${data['bq']}",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                      ),
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      color: Colors.white,
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          data['bq']++;
                                        });
                                      },
                                      alignment: Alignment.center,
                                      icon: Icon(
                                        Icons.add,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          flex: 2,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (!addedProducts.contains(data)) {
                                  addedProducts.add(data);
                                }
                                Navigator.of(context).pushNamed(
                                  'cartpage',
                                );
                              });
                            },
                            child: Container(
                              height: h * .055,
                              width: w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.orangeAccent,
                              ),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Rs.${data['price']}",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
