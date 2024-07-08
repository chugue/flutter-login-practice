import 'package:flutter/material.dart';
import 'package:login_app/pages/join_page.dart';

MaterialApp loginPractice() {
  return MaterialApp(
    theme: buildThemeData(),
    initialRoute: "/join",
    routes: {
      "/join": (context) => JoinPage(),
    },
  );
}

ThemeData buildThemeData() {
  return ThemeData(
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        minimumSize: Size(double.infinity, 60),
      ),
    ),
  );
}
