import 'package:flutter/material.dart';

const lsColors =[
  [
    Color(0xFF8A2387), 
    Color(0xFFE94057), 
    Color(0XFFf16E1d), 
    Color(0XFFFFBD22),
  ],
  [
    Color(0XFFFFBD22),
    Color(0xFFE94057), 
    Color(0xFF8A2387),
  ],
];

class ColorProvider extends ChangeNotifier{
  List<Color> colorSelected = lsColors.first;
  int changeColors(int i){
    int _count = 0;
    if(i < lsColors.length){
      _count = i;
    }
    colorSelected = lsColors[_count];
    notifyListeners();
    return _count;
  }
}