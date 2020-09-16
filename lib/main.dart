import 'package:flutter/material.dart';
import 'day01/FirstScreen.dart';
import 'day02/preview/home.dart';
import 'day02/Layout/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Home Page',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: FirstScreen(), // day01入口
      home: HomeScreen(), // day01 作业入口
      // home: SingleChileScrollViewTask(), // day02: ListViewTask || GridViewTask || GestureTask || SingleChileScrollViewTask
    );
  }
}
