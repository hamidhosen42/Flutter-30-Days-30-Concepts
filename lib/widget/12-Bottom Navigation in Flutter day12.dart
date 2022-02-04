// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:akshit_madan/widget/1-Container%20and%20SizedBox%20day1.dart';
import 'package:flutter/material.dart';

import '2-Rows, Columns and Wrap day2.dart';
import '3-Text Button and Elevated Button day3.dart';
import '4-ListView and GridView in Flutter day4.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  var selectedIndex = 0;
  PageController pageController = PageController();

  List<Widget> widgets = [
    Text('Home'),
    Text('Search'),
    Text('Add'),
    Text('Profile'),
  ];

  onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Bottom Navigation in Flutter"),
      //   centerTitle: true,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Searchs",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
      ),
      // ----------body------
      // body: Center(
      //   child:widgets.elementAt(selectedIndex),
      // ),
      body: PageView(
        controller: pageController,
        children: [
          Home(),
          RowCols(),
          Button(),
          ListGrid(),
        ],
      ),
    );
  }
}