// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({Key? key}) : super(key: key);

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  // List<String> name = ["hamid", "hosen", "azad", "riad", "fahim"];
  Map student_list = {
    "name": ["hamid", "hosen", "azad", "riad", "fahim"],
    "id": ['sser43', '2234543', '3434', '3434', '34343'],
    "icon": [
      Icons.delete_sharp,
      Icons.construction,
      Icons.ac_unit,
      Icons.delete_sharp,
      Icons.construction
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView and GridView in Flutter"),
        elevation: 0,
        centerTitle: true, 
      ),
      // ---GridViewBuilder-----------------
      body: GridView.builder(
        itemCount: student_list["name"].length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 5 / 20,
        ),
        itemBuilder: (context, index) {
          return Card(
            color: Colors.yellowAccent,
            child: Center(
              child: Text(student_list["name"][index]),
            ),
          );
        },
      ),
      // ------------------GridView-----
      // body: GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 10,
      //     childAspectRatio: 4 / 5,
      //   ),
      //   children: [
      //     Card(
      //       shadowColor: Colors.black,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(20),
      //       ),
      //       child: Center(
      //         child: ListTile(
      //           textColor: Colors.red,
      //           title: Text("Hamid Hosen"),
      //           subtitle: Text("East Delta University"),
      //           focusColor: Colors.yellowAccent,
      //         ),
      //       ),
      //     ),
      //     Card(
      //       shadowColor: Colors.black,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(20),
      //       ),
      //       child: Center(
      //         child: ListTile(
      //           textColor: Colors.red,
      //           title: Text("Hamid Hosen"),
      //           subtitle: Text("East Delta University"),
      //           focusColor: Colors.yellowAccent,
      //         ),
      //       ),
      //     ),
      //     Card(
      //       shadowColor: Colors.black,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(20),
      //       ),
      //       child: Center(
      //         child: ListTile(
      //           textColor: Colors.red,
      //           title: Text("Hamid Hosen"),
      //           subtitle: Text("East Delta University"),
      //           focusColor: Colors.yellowAccent,
      //         ),
      //       ),
      //     ),
      //     Card(
      //       shadowColor: Colors.black,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(20),
      //       ),
      //       child: Center(
      //         child: ListTile(
      //           textColor: Colors.red,
      //           title: Text("Hamid Hosen"),
      //           subtitle: Text("East Delta University"),
      //           focusColor: Colors.yellowAccent,
      //         ),
      //       ),
      //     ),
      //     Card(
      //       shadowColor: Colors.black,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(20),
      //       ),
      //       child: Center(
      //         child: ListTile(
      //           textColor: Colors.red,
      //           title: Text("Hamid Hosen"),
      //           subtitle: Text("East Delta University"),
      //           focusColor: Colors.yellowAccent,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      // ---------------lsitViewBuilder--------------
      // body: Container(
      //   child: ListView.builder(
      //     itemCount: student_list["name"].length,
      //     itemBuilder: (context, index) {
      //       return Card(
      //         shadowColor: Colors.black,
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(20),
      //         ),
      //         child: ListTile(
      //           textColor: Colors.red,
      //           leading: Icon(student_list["icon"][index]),
      //           trailing: Icon(Icons.delete_sharp),
      //           // title: Text(name[index]),
      //           title: Text(student_list["name"][index]),
      //           subtitle: Text(student_list["id"][index]),
      //           focusColor: Colors.yellowAccent,
      //         ),
      //       );
      //     },
      //   ),
      // ),
      // ----------------ListView-----------------
      // body: ListView(
      //   children: [
      //     Card(
      //       shadowColor: Colors.black,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(20),
      //       ),
      //       child: ListTile(
      //         // trailing: Row(
      //         //   children: [
      //         //     SizedBox(
      //         //       width: 100,
      //         //     ),
      //         //     Icon(Icons.safety_divider),
      //         //     Icon(Icons.delete_sharp),
      //         //   ],
      //         // ),
      //         textColor: Colors.red,
      //         title: Text("Hamid Hosen"),
      //         subtitle: Text("East Delta University"),
      //         focusColor: Colors.yellowAccent,
      //       ),
      //     ),
      //     Card(
      //       shadowColor: Colors.black,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(20),
      //       ),
      //       child: ListTile(
      //         // trailing: Row(
      //         //   children: [
      //         //     SizedBox(
      //         //       width: 100,
      //         //     ),
      //         //     Icon(Icons.safety_divider),
      //         //     Icon(Icons.delete_sharp),
      //         //   ],
      //         // ),
      //         textColor: Colors.red,
      //         title: Text("Hamid Hosen"),
      //         subtitle: Text("East Delta University"),
      //         focusColor: Colors.yellowAccent,
      //       ),
      //     ),
      //     Card(
      //       shadowColor: Colors.black,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(20),
      //       ),
      //       child: ListTile(
      //         // trailing: Row(
      //         //   children: [
      //         //     SizedBox(
      //         //       width: 100,
      //         //     ),
      //         //     Icon(Icons.safety_divider),
      //         //     Icon(Icons.delete_sharp),
      //         //   ],
      //         // ),
      //         textColor: Colors.red,
      //         title: Text("Hamid Hosen"),
      //         subtitle: Text("East Delta University"),
      //         focusColor: Colors.yellowAccent,
      //       ),
      //     ),
      //     Card(
      //       shadowColor: Colors.black,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(20),
      //       ),
      //       child: ListTile(
      //         // trailing: Row(
      //         //   children: [
      //         //     SizedBox(
      //         //       width: 100,
      //         //     ),
      //         //     Icon(Icons.safety_divider),
      //         //     Icon(Icons.delete_sharp),
      //         //   ],
      //         // ),
      //         textColor: Colors.red,
      //         title: Text("Hamid Hosen"),
      //         subtitle: Text("East Delta University"),
      //         focusColor: Colors.yellowAccent,
      //       ),
      //     ),
      //     Card(
      //       shadowColor: Colors.black,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(20),
      //       ),
      //       child: ListTile(
      //         // trailing: Row(
      //         //   children: [
      //         //     SizedBox(
      //         //       width: 100,
      //         //     ),
      //         //     Icon(Icons.safety_divider),
      //         //     Icon(Icons.delete_sharp),
      //         //   ],
      //         // ),
      //         textColor: Colors.red,
      //         title: Text("Hamid Hosen"),
      //         subtitle: Text("East Delta University"),
      //         focusColor: Colors.yellowAccent,
      //       ),
      //     ),
      //     Card(
      //       shadowColor: Colors.black,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(20),
      //       ),
      //       child: ListTile(
      //         // trailing: Row(
      //         //   children: [
      //         //     SizedBox(
      //         //       width: 100,
      //         //     ),
      //         //     Icon(Icons.safety_divider),
      //         //     Icon(Icons.delete_sharp),
      //         //   ],
      //         // ),
      //         textColor: Colors.red,
      //         title: Text("Hamid Hosen"),
      //         subtitle: Text("East Delta University"),
      //         focusColor: Colors.yellowAccent,
      //       ),
      //     ),
      //     Card(
      //       shadowColor: Colors.black,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(20),
      //       ),
      //       child: ListTile(
      //         // trailing: Row(
      //         //   children: [
      //         //     SizedBox(
      //         //       width: 100,
      //         //     ),
      //         //     Icon(Icons.safety_divider),
      //         //     Icon(Icons.delete_sharp),
      //         //   ],
      //         // ),
      //         textColor: Colors.red,
      //         title: Text("Hamid Hosen"),
      //         subtitle: Text("East Delta University"),
      //         focusColor: Colors.yellowAccent,
      //       ),
      //     ),
      //     Card(
      //       shadowColor: Colors.black,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(20),
      //       ),
      //       child: ListTile(
      //         // trailing: Row(
      //         //   children: [
      //         //     SizedBox(
      //         //       width: 100,
      //         //     ),
      //         //     Icon(Icons.safety_divider),
      //         //     Icon(Icons.delete_sharp),
      //         //   ],
      //         // ),
      //         textColor: Colors.red,
      //         title: Text("Hamid Hosen"),
      //         subtitle: Text("East Delta University"),
      //         focusColor: Colors.yellowAccent,
      //       ),
      //     ),
      //     Card(
      //       shadowColor: Colors.black,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(20),
      //       ),
      //       child: ListTile(
      //         // trailing: Row(
      //         //   children: [
      //         //     SizedBox(
      //         //       width: 100,
      //         //     ),
      //         //     Icon(Icons.safety_divider),
      //         //     Icon(Icons.delete_sharp),
      //         //   ],
      //         // ),
      //         textColor: Colors.red,
      //         title: Text("Hamid Hosen"),
      //         subtitle: Text("East Delta University"),
      //         focusColor: Colors.yellowAccent,
      //       ),
      //     ),
      //     Card(
      //       shadowColor: Colors.black,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(20),
      //       ),
      //       child: ListTile(
      //         // trailing: Row(
      //         //   children: [
      //         //     SizedBox(
      //         //       width: 100,
      //         //     ),
      //         //     Icon(Icons.safety_divider),
      //         //     Icon(Icons.delete_sharp),
      //         //   ],
      //         // ),
      //         textColor: Colors.red,
      //         title: Text("Hamid Hosen"),
      //         subtitle: Text("East Delta University"),
      //         focusColor: Colors.yellowAccent,
      //       ),
      //     ),
      //     Card(
      //       shadowColor: Colors.black,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(20),
      //       ),
      //       child: ListTile(
      //         // trailing: Row(
      //         //   children: [
      //         //     SizedBox(
      //         //       width: 100,
      //         //     ),
      //         //     Icon(Icons.safety_divider),
      //         //     Icon(Icons.delete_sharp),
      //         //   ],
      //         // ),
      //         textColor: Colors.red,
      //         title: Text("Hamid Hosen"),
      //         subtitle: Text("East Delta University"),
      //         focusColor: Colors.yellowAccent,
      //       ),
      //     ),
      //     Card(
      //       shadowColor: Colors.black,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(20),
      //       ),
      //       child: ListTile(
      //         // trailing: Row(
      //         //   children: [
      //         //     SizedBox(
      //         //       width: 100,
      //         //     ),
      //         //     Icon(Icons.safety_divider),
      //         //     Icon(Icons.delete_sharp),
      //         //   ],
      //         // ),
      //         textColor: Colors.red,
      //         title: Text("Hamid Hosen"),
      //         subtitle: Text("East Delta University"),
      //         focusColor: Colors.yellowAccent,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
