// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({Key? key}) : super(key: key);

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> program = [
    "C",
    "Cpp",
    "Java",
    "Python",
    "Dart",
    "JavaScrift",
    "Kotlin"
        "C",
    "Cpp",
    "Java",
    "Python",
    "Dart",
    "JavaScrift",
    "Kotlin"
        "C",
    "Cpp",
    "Java",
    "Python",
    "Dart",
    "JavaScrift",
    "Kotlin"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissible in Flutter"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: program.length,
          itemBuilder: (context, index) {
            final programs = program[index];
            return Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(programs),
                    backgroundColor: Colors.amber,
                  ));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(programs),
                    backgroundColor: Colors.green,
                  ));
                }
              },
              background: Container(
                color: Colors.lime,
              ),
              secondaryBackground: Container(
                color: Colors.red,
              ),
              key: Key(programs),
              child: Card(
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.grey,
                child: ListTile(
                  title: Text(program[index]),
                ),
              ),
            );
          }),
    );
  }
}