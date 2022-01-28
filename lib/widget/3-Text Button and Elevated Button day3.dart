// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Button and Elevated Button"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // -------------------------TextButton ----------------------
            Container(
              height: 100,
              width: 200,
              child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.black),
                    shadowColor: MaterialStateProperty.all(Colors.green),
                    elevation: MaterialStateProperty.all(10),
                    padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                    backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).primaryColorDark),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                  ),
                  child: Text(
                    "Hamid",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  )),
            ),
            SizedBox(
              height: 50,
            ),
            // -----------------------------ElevatedButton---------------------------
            Container(
              height: 100,
              width: 400,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.black),
                    shadowColor: MaterialStateProperty.all(Colors.green),
                    elevation: MaterialStateProperty.all(10),
                    padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40))),
                  ),
                  child: Text(
                    "Hamid",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}