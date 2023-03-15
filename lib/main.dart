import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruta/pages/CartPage.dart';
import 'package:fruta/pages/HomePage.dart';
import 'package:fruta/pages/ItemPage.dart';
import 'package:fruta/pages/OrderPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

 class _MyAppState extends State<MyApp> {
  @override
  void initState(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        "ItemPage": (context) => ItemPage(),
        "cartPage": (context) => CartPage(),
        "OrderPage": (context) => OrderPage(),
      },
    );
  }

}