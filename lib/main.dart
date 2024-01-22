import 'package:flutter/material.dart';
import 'package:project/Screen/home_screen.dart';
import 'package:project/Screen/starting_screen/login.dart';
import 'package:project/Screen/starting_screen/signin.dart';

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