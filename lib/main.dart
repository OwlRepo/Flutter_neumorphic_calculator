import 'package:flutter/material.dart';
import 'package:flutter_calculator/Routes/Home.dart';
import 'package:flutter_calculator/Routes/Splash.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Splash.routeName,
      routes: {
        Splash.routeName: (context) => Splash(),
        Home.routeName: (context) => Home(),
      },
    );
  }
}
