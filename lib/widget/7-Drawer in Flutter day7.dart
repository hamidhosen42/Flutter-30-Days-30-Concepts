// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DrawerWidge extends StatelessWidget {
  const DrawerWidge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                    // color: Colors.red,
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              "https://avatars.githubusercontent.com/u/68488154?u=baf6ecf0d026dc8d265ffeab69046eb45f543e87&v=4"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hamid Hosen"),
                            Text("haisdjksk@gmail.com"),
                          ],
                        ),
                      ],
                    ),
                  )),
              ListTile(
                iconColor: Colors.white,
                leading: Icon(Icons.folder),
                title: Text("My File"),
                textColor: Colors.white,
              ),
              ListTile(
                iconColor: Colors.white,
                leading: Icon(Icons.upload),
                title: Text("My upload"),
                textColor: Colors.white,
              ),
              ListTile(
                iconColor: Colors.white,
                leading: Icon(Icons.safety_divider),
                title: Text("My File"),
                textColor: Colors.white,
              ),
              ListTile(
                iconColor: Colors.white,
                leading: Icon(Icons.share),
                title: Text("My File"),
                textColor: Colors.white,
              ),
              Divider(),
              ListTile(
                iconColor: Colors.white,
                leading: Icon(Icons.folder),
                title: Text("My File"),
                textColor: Colors.white,
              ),
              ListTile(
                iconColor: Colors.white,
                leading: Icon(Icons.local_activity),
                title: Text("My File"),
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Drawer in Flutter"),
        centerTitle: true,
      ),
      body: Text("Hamid"),
    );
  }
}
