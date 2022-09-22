// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:mlmodel/authentication.dart';
import 'package:mlmodel/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'authentication',
    routes: {
      'authentication': (context) => Authentication(),
      'home': (context) => home(),
    },
  ));
}
