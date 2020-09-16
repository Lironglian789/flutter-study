import 'package:flutter/material.dart';

class SingleChileScrollViewTask extends StatelessWidget {
  const SingleChileScrollViewTask({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> items = List.generate(150, (index) => 'item $index');

    return Scaffold(
      appBar: new AppBar(
        title: Text('SingleChileScroll 的使用'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: items.map((item) => 
            Text(
              item,
              style: TextStyle(fontSize: 20),
            )).toList()
        ),
      ),
    );
  }
}