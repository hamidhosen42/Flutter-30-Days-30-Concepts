// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, unused_local_variable, avoid_print

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({Key? key}) : super(key: key);

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {

  Position? position;

  function() async {
    
    bool serviceEnabled;
    LocationPermission permission;

    String latitude;
    String longlatitude;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Fluttertoast.showToast(
          msg: "Location services are disabled.",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Fluttertoast.showToast(
            msg: "Location permissions are denied",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    }

    if (permission == LocationPermission.deniedForever) {
      Fluttertoast.showToast(
          msg:
              'Location permissions are permanently denied, we cannot request permissions.',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }

    Position currentPosition = await Geolocator.getCurrentPosition();
    setState(() {
      position = currentPosition;

      latitude = currentPosition.latitude.toString();
      longlatitude = currentPosition.longitude.toString();

      print(latitude);
      print(longlatitude);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Geolocator Package in Flutter"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(position == null ? "Location" : position.toString()),
            ElevatedButton(
              onPressed: () {
                function();
              },
              child: Text("Get Location"),
            ),
          ],
        ),
      ),
    );
  }
}