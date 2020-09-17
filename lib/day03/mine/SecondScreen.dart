import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String content;

  SecondScreen({this.content});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('二级页面'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '入参是${this.content != null ? this.content : ""}',
              style: TextStyle(
                fontSize: 30,
                color: Colors.red
              ),
            ),
            RaisedButton(
              child: Text('返回1'),
              onPressed: () {
                Navigator.of(context).pop('返回数据');
              },
            ),
            FlatButton( // 跳转到页面3并删除页面2的记录
              child: Text('返回2'),
              onPressed: (){
                Navigator.of(context).popAndPushNamed('/third');
              },
            ),
            FlatButton(
              child: Text('返回3'),
              onPressed: (){
                Navigator.of(context).pushReplacementNamed('/third');
              },
            )
          ],
        )
      )
    );
  }
}
