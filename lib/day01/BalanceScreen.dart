import 'package:flutter/material.dart';

class BalanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('银行'),
      ),
      body: Center(
        child: Text(
          '银行',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red
          ),
        ),
      ),
    );
  }
}
