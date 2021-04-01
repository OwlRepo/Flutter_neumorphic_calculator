import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_calculator/Data/NumPadDataList.dart';
import 'package:flutter_calculator/Providers/EquationValue.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NumPads extends StatefulWidget {
  @override
  _NumPadsState createState() => _NumPadsState();
}

class _NumPadsState extends State<NumPads> {
  bool _isTapped = false;
  int _tappedButtonIndex = 0;
  @override
  Widget build(BuildContext context) {
    Color baseColor = Color(0xFFF2F2F2);
    return Expanded(
      flex: 1,
      child: Container(
        child: GridView.builder(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 5 / 5,
            mainAxisSpacing: 30.0,
            crossAxisSpacing: 20.0,
          ),
          itemCount: NumPadDataList.numPadData.length,
          itemBuilder: (value, index) {
            return GestureDetector(
              onTapDown: (tapDetails) {
                setState(() {
                  _isTapped = !_isTapped;
                  _tappedButtonIndex = index;
                });
                HapticFeedback.lightImpact();
                print(NumPadDataList.numPadData[index].symbol);
                EquationValue.equationVal.value =
                    EquationValue.equationVal.value +
                        NumPadDataList.numPadData[index].symbol;
              },
              onTapUp: (tapDetails) {
                Future.delayed(Duration(milliseconds: 100), () {
                  setState(() {
                    _isTapped = !_isTapped;
                    _tappedButtonIndex = index;
                  });
                });
              },
              onLongPress: () {
                Future.delayed(Duration(milliseconds: 100), () {
                  setState(() {
                    _isTapped = !_isTapped;
                    _tappedButtonIndex = index;
                  });
                });
              },
              child: ClayAnimatedContainer(
                duration: Duration(milliseconds: 150),
                color: baseColor,
                borderRadius: 10.0,
                curveType: CurveType.convex,
                emboss: _tappedButtonIndex == index ? _isTapped : null,
                child: Center(
                  child: Text(
                    NumPadDataList.numPadData[index].symbol,
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
