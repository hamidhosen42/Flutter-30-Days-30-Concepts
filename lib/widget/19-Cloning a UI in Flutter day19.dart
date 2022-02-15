// ignore_for_file: prefer_const_constructors, file_names, avoid_unnecessary_containers, unused_local_variable

import 'package:flutter/material.dart';

class UiClone extends StatefulWidget {
  const UiClone({Key? key}) : super(key: key);

  @override
  State<UiClone> createState() => _UiCloneState();
}

class _UiCloneState extends State<UiClone> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: h / 2,
                      // color: Colors.green,
                      child: Stack(children: [
                        Positioned(
                          child: Container(
                            height: h / 2.3,
                            // color: Colors.red,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/img1.jpg")),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          right: 20,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.yellow,
                            backgroundImage: AssetImage("assets/img1.jpg"),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          right: 20,
                          child: Icon(
                            Icons.favorite,
                            color: Colors.black,
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 20,
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Madrid City Tour for Designers',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'This is a random description of the topic',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        rowIconText('20', Icons.favorite_rounded),
                        rowIconText('34', Icons.upload),
                        rowIconText('82', Icons.message),
                        rowIconText('295', Icons.face)
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(),
                child: Divider(),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Icon(icon)
      ],
    );
  }
}