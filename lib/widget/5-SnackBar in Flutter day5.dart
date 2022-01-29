// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable

import 'package:flutter/material.dart';

class Snackbar extends StatefulWidget {
  const Snackbar({Key? key}) : super(key: key);

  @override
  State<Snackbar> createState() => _SnackbarState();
}

class _SnackbarState extends State<Snackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar in Flutter"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              final snackbar = SnackBar(
                content: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Welcome to my app",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                backgroundColor: Colors.yellowAccent,
                duration: Duration(seconds: 3),
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                action: SnackBarAction(
                  textColor: Colors.red,
                  label: "Exit",
                  onPressed: () {},
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Text("Click"),
          ),
        ),
      ),
    );
  }
}
