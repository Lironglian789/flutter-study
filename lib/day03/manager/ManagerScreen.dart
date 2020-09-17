import 'package:flutter/material.dart';

class ManagerScreen extends StatelessWidget {
  const ManagerScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('管理'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          '管理',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red
          ),
        ),
      ),
    );
  }
}
