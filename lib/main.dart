// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'widget/1-Container and SizedBox day1.dart';
import 'widget/10-Bottom Sheet Widget in Flutter day10.dart';
import 'widget/11-Animated Text Widget in Flutter day11.dart';
import 'widget/12-Bottom Navigation in Flutter day12.dart';
import 'widget/13-DropDown List in Flutter day13.dart';
import 'widget/14-Forms in Flutter day14.dart';
import 'widget/15-Stack and Positioned in Flutter day15.dart';
import 'widget/16-Flutter TabBar Widget day16.dart';
import 'widget/17-ImagePicker Widget in Flutter day17.dart';
import 'widget/18-Geolocator Package in Flutter day18.dart';
import 'widget/19-Cloning a UI in Flutter day19.dart';
import 'widget/2-Rows, Columns and Wrap day2.dart';
import 'widget/20-Cloning Complex UI in Flutter day20.dart';
import 'widget/24-Firebase Authentication in Flutter Email-Password day24.dart';
import 'widget/3-Text Button and Elevated Button day3.dart';
import 'widget/4-ListView and GridView in Flutter day4.dart';
import 'widget/5-SnackBar in Flutter day5.dart';
import 'widget/6-Dismissible in Flutter day6.dart';
import 'widget/7-Drawer in Flutter day7.dart';
import 'widget/8-Image Widget day8.dart';
import 'widget/9-Alert Dialog in Flutter day9.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.purple,
        primarySwatch: Colors.blue,
      ),
      // home: Home(),
      // home: RowCols(),
      // home: Button(),
      // home: ListGrid(),
      // home: Snackbar(),
      // home: DismissibleWidget(),
      // home: DrawerWidge(),
      // home: ImageWidget(),
      // home: AlertDialogs(),
      // home: BottomSheetWidget(),
      // home: AnimatedTextWidget(),
      // home: BottomNavigationWidget(),
      // home: DropDownWidge(),
      // home: FormWidget(),
      // home: StackWidget(),
      // home: TabBarWidget(),
      // home: ImagePickerWidget(),
      // home: LocationWidget(),
      // home: UiClone(),
      // home: InstraCloneUi(),
      home: Day24Authentication(),
    );
  }
}