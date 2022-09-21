import 'package:flutter/material.dart';
import 'package:mlmodel/authentication.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'authentication',
    routes: {'authentication': (context) => Authentication()},
  ));
}
