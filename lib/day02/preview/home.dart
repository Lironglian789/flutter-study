import 'package:flutter/material.dart';
import 'package:flutter_study/day02/preview/find/FindeScreen.dart';
import 'package:flutter_study/day02/preview/maneger/ManagerScreen.dart';
import 'package:flutter_study/day02/preview/mine/MineScreen.dart';
import 'package:flutter_study/day02/preview/trend/TrendScreen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<Widget> _children = [
    ManagerScreen(),
    TrendScreen(),
    FindScreen(),
    MineScreen(),
  ];

  int _currenrIndex = 0;

  List<BottomNavigationBarItem> _itemList = [
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/manager_normal.png',
        width: 23, height: 24,
      ),
      title: Text('管理'),
      activeIcon: Image.asset(
        'assets/images/manager_selected.png',
        width: 23, height: 24,
      )
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/invite_normal.png',
        width: 23, height: 24,
      ),
      title: Text('好友'),
      activeIcon: Image.asset(
        'assets/images/invite_selected.png',
        width: 23, height: 24,
      )
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/discovery_normal.png',
        width: 23, height: 24,
      ),
      title: Text('发现'),
      activeIcon: Image.asset(
        'assets/images/discovery_selected.png',
        width: 23, height: 24,
      )
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/mine_normal.png',
        width: 23, height: 24,
      ),
      title: Text('我的'),
      activeIcon: Image.asset(
        'assets/images/mine_selected.png',
        width: 23, height: 24,
      )
    )
  ];

  onTapAction (int index) {
    setState(() {
      _currenrIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currenrIndex],
      bottomNavigationBar: new BottomNavigationBar(
        items: _itemList,
        onTap: onTapAction, // 点击标签事件
        currentIndex: _currenrIndex,
        selectedItemColor: Color.fromARGB(255, 242, 89, 63), // 展示选中的文本
        selectedFontSize: 14, // 默认14
        unselectedFontSize: 14, // 默认12
        type: BottomNavigationBarType.fixed, // 需要加上才展示文本
      ),
    );
  }
}