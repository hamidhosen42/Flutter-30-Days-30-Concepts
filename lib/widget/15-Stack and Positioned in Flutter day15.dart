// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack and Positioned in Flutter"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              // color: Colors.red,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage('assets/img1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              // child: Image.asset("assets/img1.jpg"),
            ),
          ),
          Positioned(
            top: 100,
            left: 100,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
          )
        ],
      ),

      // body: Container(
      //   color: Colors.blue,
      //   child: Center(
      //     child: Stack(
      //       children: [
      //         Center(
      //           child: Container(
      //             height: 400,
      //             width: 400,
      //             color: Colors.yellow,
      //           ),
      //         ),
      //         Positioned(
      //           top: 10,
      //           right: 20,
      //           child: Container(
      //             height: 200,
      //             width: 200,
      //             color: Colors.red,
      //           ),
      //         ),
      //         Positioned(
      //           bottom: 100,
      //           left: 50,
      //           child: Container(
      //             height: 100,
      //             width: 100,
      //             color: Colors.green,
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
