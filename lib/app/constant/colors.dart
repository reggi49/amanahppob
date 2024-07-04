import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

const appPurple = Color(0xFF614E8F);
const appPurpleDark = Color(0xFF3e3c64);
const appPurpleLight1 = Color(0xFF7B6EAB);
const appPurpleLight2 = Color(0xFF9783C6);
const appPurpleLight3 = Color(0xFFEEE5FF);
const appWhite = Color(0xFFFAF8FC);
const appOrange = Color(0xFFE6704A);
const appGrey = Color(0x00656572);
const appBlue = Color(0xFF668CDF);

ThemeData themeLight = ThemeData(
  brightness: Brightness.light,
  floatingActionButtonTheme:
      FloatingActionButtonThemeData(backgroundColor: appPurpleDark),
  primaryColor: appPurple,
  scaffoldBackgroundColor: appWhite,
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(
      color: appWhite, //change your color here
    ),
    titleTextStyle: TextStyle(fontSize: 20, color: appWhite),
    actionsIconTheme: IconThemeData(color: appWhite),
    elevation: 4,
    backgroundColor: appPurple,
  ), // AppBarTheme
  textTheme: TextTheme(
      bodyLarge: TextStyle(color: appPurpleDark),
      bodyMedium: TextStyle(color: appPurpleDark)),
  listTileTheme: ListTileThemeData(textColor: appPurpleDark), // TextTheme
  tabBarTheme: TabBarTheme(
    indicatorColor: appPurpleDark,
    labelColor: appPurpleDark,
    unselectedLabelColor: Colors.grey,
  ),
); // ThemeData
ThemeData themeDark = ThemeData(
  brightness: Brightness.dark,
  floatingActionButtonTheme:
      FloatingActionButtonThemeData(backgroundColor: appWhite),
  primaryColor: appPurpleLight2,
  scaffoldBackgroundColor: appPurpleDark,
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: appPurpleDark,
    actionsIconTheme: IconThemeData(color: appWhite),
  ), // AppBarTheme
  textTheme: TextTheme(
      bodyLarge: TextStyle(color: appWhite),
      bodyMedium: TextStyle(color: appWhite)),
  listTileTheme: ListTileThemeData(textColor: appWhite), // TextTheme
  tabBarTheme: TabBarTheme(
    indicatorColor: appPurpleDark,
    labelColor: appWhite,
    unselectedLabelColor: Colors.grey,
  ),
); // ThemeData