import 'package:flutter/material.dart';
import 'package:flutter_calculator/Routes/Home.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  static const routeName = '/splash';
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () => Get.to(() => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'SplashScreen',
          ),
        ),
      ),
    );
  }
}
