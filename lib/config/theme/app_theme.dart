import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.deepPurpleAccent,
  Colors.red,
  Colors.lightGreen,
  Colors.yellow,
  Colors.deepOrangeAccent,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(
            selectedColor >= 0, "Selected color must be greater or equal to 0"),
        assert(selectedColor < colorList.length,
            "Selected color must be less than or equal to ${colorList.length - 1}");

  ThemeData getTheme() => ThemeData(
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: true));
}
