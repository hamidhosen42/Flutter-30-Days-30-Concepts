import 'package:cloud_firestore/cloud_firestore.dart';

create(
    String collName, name, universityName, departmentName, int age, id) async {
  await FirebaseFirestore.instance.collection(collName).doc(name).set(
      {'name': universityName, "dp": departmentName, "age": age, 'id': id});
  print("databse update");
}

update(String collName, name, programming, languge) async {
  await FirebaseFirestore.instance
      .collection(collName)
      .doc(name)
      .update({programming: languge});
  print("Database Update");
}

delate(String collName, docName) async {
  await FirebaseFirestore.instance.collection(collName).doc(docName).delete();
  print('Document Deleted');
}