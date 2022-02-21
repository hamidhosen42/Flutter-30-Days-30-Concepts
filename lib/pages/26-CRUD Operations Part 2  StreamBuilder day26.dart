// ignore_for_file: unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PetsList extends StatefulWidget {
  const PetsList({Key? key}) : super(key: key);

  @override
  _PetsState createState() => _PetsState();
}

class _PetsState extends State<PetsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CRUD Operations"),
        centerTitle: true,
      ),
      body: Container(
        child: StreamBuilder<QuerySnapshot>(
            stream:
                FirebaseFirestore.instance.collection("Student").snapshots(),
            builder: (context, petSnapshots) {
              if (petSnapshots.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else {
                final petsDoc = petSnapshots.data!.docs;
                return ListView.builder(
                    itemCount: petsDoc.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 10,
                        child: ListTile(
                          title: Text(petsDoc[index]["name"]),
                          subtitle: Text(petsDoc[index]["dp"]),
                        ),
                      );
                    });
              }
            }),
      ),
    );
  }
}