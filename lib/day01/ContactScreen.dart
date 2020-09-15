import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('联系人'),
        centerTitle: true
      ),
      body: Center(
        child: Text(
          '联系人',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red
          ),
        ),
      ),
    );
  }
}
