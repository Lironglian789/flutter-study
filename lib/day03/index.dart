import 'package:flutter/material.dart';
import 'package:flutter_study/day03/find/FindSCreen.dart';
import 'package:flutter_study/day03/manager/ManagerScreen.dart';
import 'package:flutter_study/day03/mine/MineScreen.dart';
import 'package:flutter_study/day03/trend/TrendScreen.dart';

class IndexScreen extends StatefulWidget {
  IndexScreen({Key key}) : super(key: key);

  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  final List<Widget> _children = [
    ManagerScreen(),
    TrendScreen(),
    FindScreen(),
    MineScreen()
  ];

  int _currentIndex = 0;

  List<BottomNavigationBarItem> _itemList = [
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/manager_normal.png',
        width:  23, height:  23,
      ),
      title: Text('管理'),
      activeIcon: Image.asset(
        'assets/images/manager_selected.png',
        width: 23, height: 23,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/invite_normal.png',
        width:  23, height:  23,
      ),
      title: Text('好友'),
      activeIcon: Image.asset(
        'assets/images/invite_selected.png',
        width: 23, height: 23,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/discovery_normal.png',
        width:  23, height:  23,
      ),
      title: Text('发现'),
      activeIcon: Image.asset(
        'assets/images/discovery_selected.png',
        width: 23, height: 23,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/mine_normal.png',
        width:  23, height:  23,
      ),
      title: Text('我的'),
      activeIcon: Image.asset(
        'assets/images/mine_selected.png',
        width: 23, height: 23,
      ),
    ),
  ];

  onTapAction(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     bottomNavigationBar: new BottomNavigationBar(
       items: _itemList,
        currentIndex: _currentIndex,
        onTap: onTapAction,
        unselectedFontSize: 14,
        type: BottomNavigationBarType.fixed,
      ),
      body: _children[_currentIndex],
    );
  }
}