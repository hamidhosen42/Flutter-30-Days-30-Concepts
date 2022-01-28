// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'widget/Container and SizedBox day1.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(brightness: Brightness.light, primaryColor: Colors.yellow),
      home: Home(),
    );
  }
}
