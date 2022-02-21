import 'package:akshit_madan/authentication/25-dataBaseFunction%20day25.dart';
import 'package:akshit_madan/pages/26-CRUD%20Operations%20Part%202%20%20StreamBuilder%20day26.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseCloudStore extends StatelessWidget {
  const FirebaseCloudStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Database Options"),
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
            },
            icon: Icon(Icons.leave_bags_at_home),
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  create("Student", "Fahim", "EDU", "CSE", 23, 191002012);
                },
                child: Text("Create"),
              ),
              ElevatedButton(
                onPressed: () {
                  update("Student", "Fahim", "School", "SKKHS");
                },
                child: Text("Update"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PetsList()));
                },
                child: Text("Retrive"),
              ),
              ElevatedButton(
                onPressed: () {
                  delate("pets", "tom");
                },
                child: Text("Delate"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}