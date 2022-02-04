// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BottomSheet extends StatelessWidget {
  const BottomSheet({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet Widget in Flutter"),
      ),
    );
  }
}