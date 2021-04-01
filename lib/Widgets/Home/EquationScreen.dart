import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/Providers/EquationValue.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EquationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color baseColor = Color(0xFFF2F2F2);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: ClayContainer(
        color: baseColor,
        borderRadius: 15.0,
        curveType: CurveType.concave,
        emboss: false,
        child: Container(
          height: 150.0,
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  EquationValue.equationVal.value,
                  style: GoogleFonts.roboto(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
