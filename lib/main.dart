import 'package:flutter/material.dart';
import 'package:flutter_study/day03/WellcomePage.dart';
import 'package:flutter_study/day03/mine/SecondScreen.dart';
import 'package:flutter_study/day03/mine/ThirdScreen.dart';
import 'day01/FirstScreen.dart';
import 'day02/preview/home.dart';
import 'day02/Layout/index.dart';
import 'day03/index.dart';

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
      // home: HomeScreen(), // day01 作业入口
      // home: SingleChileScrollViewTask(), // day02: ListViewTask || GridViewTask || GestureTask || SingleChileScrollViewTask
      home: WellcomePage(), // day03 入口 IndexScreen || WellcomePage
      routes: {
        '/second': (BuildContext context) {
          return SecondScreen(content: 'flutter dat03');
        },
         '/third': (BuildContext context) {
          return ThirdScreen();
        },
      },
    );
  }
}
