// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unused_local_variable, prefer_final_fields, avoid_print

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({Key? key}) : super(key: key);

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  XFile? file;
  List<XFile>? files;
  ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImagePicker Widget in Flutter"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.grey.shade200,
            child: Center(
              child: file != null
                  ? Image.file(
                      File(file!.path),
                      fit: BoxFit.cover,
                    )
                  : Text("No picked"),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              // Pick an image
              final XFile? image =
                  await _picker.pickImage(source: ImageSource.gallery);
              setState(() {
                file = image;
              });
              print("Image Pick");
              print(image!.path);
            },
            child: Text("Pick Image"),
          ),
          ElevatedButton(
            onPressed: () async {
              // Pick an image
              final List<XFile>? images = await _picker.pickMultiImage();
              setState(() {
                files = images;
              });
              print("Image Pick");
              for (int i = 0; i < files!.length; i++) {
                print(files![i].path);
              }
            },
            child: Text("Pick Image"),
          ),
        ],
      ),
    );
  }
}