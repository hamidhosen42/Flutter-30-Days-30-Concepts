// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              // color: Colors.yellow,
              height: 150,
              width: 150,

              decoration: BoxDecoration(
                color: Colors.yellow,
                boxShadow: [
                  BoxShadow(
                    offset: Offset.zero,
                    blurRadius: 10,
                    spreadRadius: 10,
                    color: Colors.green,
                  ),
                ],
                // shape: BoxShape.circle,
                // borderRadius: BorderRadius.circular(10),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Hamid Hosen"),
              )),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              // color: Colors.yellow,
              height: 150,
              width: 150,

              decoration: BoxDecoration(
                color: Colors.yellow,
                boxShadow: [
                  BoxShadow(
                    offset: Offset.zero,
                    blurRadius: 10,
                    spreadRadius: 10,
                    color: Colors.green,
                  ),
                ],
                // shape: BoxShape.circle,
                // borderRadius: BorderRadius.circular(10),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Hamid Hosen"),
              )),
            ),
          ),
        ],
      ),
    );
  }
}