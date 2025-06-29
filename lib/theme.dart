import 'package:flutter/material.dart';

final appTheme = ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.orangeAccent,
          titleTextStyle: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        textTheme:const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 30,
          )
      ),
);