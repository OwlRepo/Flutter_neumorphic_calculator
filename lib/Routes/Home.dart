import 'package:flutter/material.dart';
import 'package:flutter_calculator/Widgets/Home/EquationScreen.dart';
import 'package:flutter_calculator/Widgets/Home/NumPads.dart';
import 'package:permission_handler/permission_handler.dart';

class Home extends StatefulWidget {
  static const routeName = '/home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color baseColor = Color(0xFFF2F2F2);

  _askPermission() async {
    // Map<Permission, PermissionStatus> status =
    //     await [Permission.sensors].request();
  }

  @override
  void initState() {
    super.initState();
    _askPermission();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 20.0,
          ),
          color: baseColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              EquationScreen(),
              Divider(
                color: Colors.transparent,
                height: 50.0,
              ),
              NumPads(),
            ],
          ),
        ),
      ),
    );
  }
}
