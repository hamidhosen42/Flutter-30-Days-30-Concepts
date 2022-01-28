// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RowCols extends StatelessWidget {
  const RowCols({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Rows, Columns and Wrap"),
        centerTitle: true,
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.yellowAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
              ],
            ),
            Wrap(
              alignment: WrapAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
