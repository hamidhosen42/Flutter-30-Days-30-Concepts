// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class DropDownWidge extends StatefulWidget {
  const DropDownWidge({Key? key}) : super(key: key);

  @override
  State<DropDownWidge> createState() => _DropDownWidgeState();
}

class _DropDownWidgeState extends State<DropDownWidge> {
  String selectedvalue = 'Orange';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown List in Flutter"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              // color: Colors.yellow,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: DropdownButton(
                  iconEnabledColor: Colors.red,
                  isExpanded: true,
                  dropdownColor: Colors.grey,
                  value: selectedvalue,
                  icon: Icon(Icons.arrow_circle_down_rounded),
                  iconSize: 50,
                  onChanged: (String? newvalue) {
                    setState(() {
                      selectedvalue = newvalue!;
                    });
                  },
                  items: <String>[
                    'Orange',
                    'Apple',
                    'Banana',
                    'Mango',
                    'Grapes'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(color: Colors.red),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}