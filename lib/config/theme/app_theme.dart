import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.deepPurpleAccent,
  Colors.red,
  Colors.lightGreen,
  Colors.amberAccent,
  Colors.deepOrangeAccent,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme({this.selectedColor = 0, this.isDarkMode = false})
      : assert(
            selectedColor >= 0, "Selected color must be greater or equal to 0"),
        assert(selectedColor < colorList.length,
            "Selected color must be less than or equal to ${colorList.length - 1}");

  ThemeData getTheme() => ThemeData(
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: true));
}
