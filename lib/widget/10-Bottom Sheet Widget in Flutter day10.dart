// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet Widget in Flutter"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("BottomSheetWidget"),
          onPressed: () {
            showModalBottomSheet(
                elevation: 0,
                isScrollControlled: true,
                isDismissible: false,
                enableDrag: true,
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text("Hamid Hosen"),
                        subtitle: Text("EDU"),
                      ),
                      ListTile(
                        title: Text("Hamid Hosen"),
                        subtitle: Text("EDU"),
                      ),
                      ListTile(
                        title: Text("Hamid Hosen"),
                        subtitle: Text("EDU"),
                      ),
                      ListTile(
                        title: Text("Hamid Hosen"),
                        subtitle: Text("EDU"),
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