import 'package:flutter/material.dart';
import 'package:billiard/screen/home_screen.dart';
import 'package:billiard/screen/starting_screen/login.dart';
import 'package:billiard/screen/starting_screen/signin.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/signin': (context) => SignInScreen(),
        '/login': (context) => Login()
      }
    )
  );
}