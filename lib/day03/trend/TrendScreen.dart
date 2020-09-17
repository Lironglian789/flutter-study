import 'package:flutter/material.dart';

class TrendScreen extends StatelessWidget {
  const TrendScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('好友'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          '好友',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red
          ),
        ),
      ),
    );
  }
}
