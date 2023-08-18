import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screens/cartpage.dart';
import 'Screens/checkoutpage.dart';
import 'Screens/detailpage.dart';
import 'Screens/homepage.dart';
import 'Screens/pdfpage.dart';
import 'Screens/splashscreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Color(0xff0b819f)),
      routes: {
        '/': (context) => SplashScreen(),
        'homepage': (context) => Homepage(),
        'detailpage': (context) => DetailPage(),
        'cartpage': (context) => CartPage(),
        'checkout': (context) => Checkout(),
        'pdf': (context) => Pdf(),
      },
    ),
  );
}
