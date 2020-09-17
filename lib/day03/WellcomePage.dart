import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_study/day03/index.dart';

import 'Application.dart';

class WellcomePage extends StatefulWidget {
  WellcomePage({Key key}) : super(key: key);

  @override
  _WellcomePageState createState() => _WellcomePageState();
}

class _WellcomePageState extends State<WellcomePage> {
  int count = 5;
  Timer _timer;
  
  @override
  void initState() {
    super.initState();
    _timer = new Timer.periodic(new Duration(seconds: 1), (timer){
      if (count == 1) {
        _timer.cancel();
        _timer = null;
        // 界面跳转
        goHomePage();
      }
      setState(() {
        count = --count;
      });
    });
  }

  goHomePage() {
    Navigator.of(context).pushAndRemoveUntil(
      new MaterialPageRoute(
        builder: (context) => IndexScreen()
      ),
      (route) => route == null
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Application.screenWidth = size.width;
    Application.screenHeight = size.height;
    Application.statusBarHeight = MediaQuery.of(context).padding.top;
    Application.bottomBarHieght = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Image.asset(
              'assets/images/SplashBgImage.jpg',
              height: Application.screenHeight,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: Application.statusBarHeight,
            right: 20,
            child: Chip(
              label: Text('$count秒'),
              backgroundColor: Colors.transparent,
            ),
          )
        ],
      )
    );
  }
}