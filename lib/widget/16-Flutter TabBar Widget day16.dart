// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter TabBar Widget"),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.black,
            indicatorWeight: 5,
            labelColor: Colors.black,
            // ignore: prefer_const_literals_to_create_immutables
            tabs: [
              Tab(
                icon: Icon(
                  Icons.chat,
                ),
                text: "Chat",
              ),
              Tab(
                icon: Icon(
                  Icons.chat_bubble,
                ),
                text: "Status",
              ),
              Tab(
                icon: Icon(
                  Icons.call,
                ),
                text: "Call",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "Person",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Center(
                child: Text('CHATS', style: TextStyle(fontSize: 30)),
              ),
            ),
            Container(
              child: Center(
                child: Text('STATUS', style: TextStyle(fontSize: 30)),
              ),
            ),
            Container(
              child: Center(
                child: Text('CALLS', style: TextStyle(fontSize: 30)),
              ),
            ),
            Container(
              child: Center(
                child: Text('PERSON', style: TextStyle(fontSize: 30)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}