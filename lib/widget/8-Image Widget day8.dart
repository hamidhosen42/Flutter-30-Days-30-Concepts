// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Widget"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 200,
          child: CachedNetworkImage(
            imageUrl:
                "https://variety.com/wp-content/uploads/2014/11/stand-by-me-doraemon.jpg?w=681&h=383&crop=1",
            placeholder: (context, url) => Center(child: CircularProgressIndicator()),
            errorWidget: (context,url,error)=>Icon(Icons.error),
          ),
          // decoration: BoxDecoration(
          //     // ignore: prefer_const_literals_to_create_immutables
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.black,
          //         // blurStyle: BlurStyle.solid,
          //         blurRadius: 10,
          //         spreadRadius: 5,
          //       ),
          //     ],
          //     color: Colors.yellow,
          //     borderRadius: BorderRadius.circular(20),
          //     image: DecorationImage(
          //       // image: NetworkImage(
          //       //     "https://cdn.pixabay.com/photo/2022/01/05/00/13/squirrel-6916189__340.jpg"),
          //       image: AssetImage("assets/img1.jpg"),
          //       fit: BoxFit.cover,
          //     )),
        ),
      ),
    );
  }
}
