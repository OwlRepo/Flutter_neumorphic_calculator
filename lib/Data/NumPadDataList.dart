import 'package:flutter/material.dart';
import 'package:flutter_calculator/Models/NumPadModel.dart';

class NumPadDataList {
  static List<NumPadModel> numPadData = [
    NumPadModel(id: 0, symbol: 'C', symbolName: 'Clear'),
    NumPadModel(id: 1, symbol: '(', symbolName: 'Open Parenthesis'),
    NumPadModel(id: 2, symbol: ')', symbolName: 'Close Parenthesis'),
    NumPadModel(id: 3, symbol: '/', symbolName: 'Divide'),
    NumPadModel(id: 4, symbol: '7', symbolName: 'Seven'),
    NumPadModel(id: 5, symbol: '8', symbolName: 'Eight'),
    NumPadModel(id: 6, symbol: '9', symbolName: 'Nine'),
    NumPadModel(id: 7, symbol: 'X', symbolName: 'Multiply'),
    NumPadModel(id: 8, symbol: '4', symbolName: 'Four'),
    NumPadModel(id: 9, symbol: '5', symbolName: 'Five'),
    NumPadModel(id: 10, symbol: '6', symbolName: 'Six'),
    NumPadModel(id: 11, symbol: '-', symbolName: 'Minus'),
    NumPadModel(id: 12, symbol: '1', symbolName: 'One'),
    NumPadModel(id: 13, symbol: '2', symbolName: 'Two'),
    NumPadModel(id: 14, symbol: '3', symbolName: 'Three'),
    NumPadModel(id: 15, symbol: '+', symbolName: 'Addition'),
    NumPadModel(id: 16, symbol: '0', symbolName: 'Zero'),
    NumPadModel(id: 17, symbol: '.', symbolName: 'Point'),
    NumPadModel(id: 18, symbol: '=', symbolName: 'Equal'),
  ];
}
