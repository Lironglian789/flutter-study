import 'package:flutter/material.dart';

class GestureTask extends StatelessWidget {
  const GestureTask({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('手势的使用'),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () => {
          print('onTap')
        },
        onLongPress: () {
          print('onLongPress');
        },
        child: Container(
          color: Colors.red,
          child: new Center(
            child: new Text('flutter 手势'),
          ),
        ),
      ),
    );
  }
}