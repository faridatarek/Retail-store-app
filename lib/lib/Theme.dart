import 'package:flutter/material.dart';

ThemeData lightTheme =ThemeData(
    scaffoldBackgroundColor: Colors.white,
    platform: TargetPlatform.iOS,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.deepOrangeAccent),
        titleTextStyle: TextStyle(color: Colors.deepOrangeAccent,fontSize: 22,fontWeight: FontWeight.w500)
    )

);