// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AlertDialogs extends StatelessWidget {
  const AlertDialogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog in Flutter"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Click"),
          onPressed: () {
            // _showDilog(context),
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    scrollable: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.amber,
                    title: Text("This is an alert"),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: [
                          Text("Hamid Hosen"),
                          Text("East Delta University")
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {},
                        child: Text("Approve"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancle"),
                      ),
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}

Future<void> _showDilog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Colors.amber,
          title: Text("This is an alert"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [Text("Hamid Hosen"), Text("East Delta University")],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text("Approve"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancle"),
            ),
          ],
        );
      });
}
