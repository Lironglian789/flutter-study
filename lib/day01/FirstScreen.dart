import 'package:flutter/material.dart';
import 'BalanceScreen.dart';
import 'ContactScreen.dart';
import 'MusicScreen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  // 定义容器
  final List<Widget> _children = [
    BalanceScreen(),
    ContactScreen(),
    MusicScreen()
  ];

  int _currentIndex = 0;

  // 标签点击事件
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(
      //   title: new Text('标题'),
      // ),
      body: _children[_currentIndex],
      drawer: new Drawer(
        child: Center(
          child: Text(
            'Drawer',
            style: new TextStyle(
                fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            title: Text('银行'),
            icon: Icon(Icons.account_balance)
          ),
          BottomNavigationBarItem(
            title: Text('联系人'),
            icon: Icon(Icons.contacts)
          ),
          BottomNavigationBarItem(
            title: Text('音乐'),
            icon: Icon(Icons.library_music)
          )
        ],
      ),
    );
  }
}

// class FirstScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('标题'),
//         // centerTitle: false,
//         // leading: new Text('左侧'),
//         // actions: <Widget>[new Text('右侧')],
//       ),
//       // body: new Text(
//       //   'body',
//       //   style: new TextStyle(
//       //     fontSize: 30,
//       //     color: Colors.red,
//       //     fontWeight: FontWeight.bold
//       //   ),
//       // ),
//       body: Center(
//         child: new Text(
//           'body',
//           style: new TextStyle(
//             fontSize: 30,
//             color: Colors.red,
//             fontWeight: FontWeight.bold
//           ),
//         ),
//       ),
//       drawer: new Drawer(
//         child: Center(
//           child: Text(
//             'Drawer',
//             style: new TextStyle(
//               fontSize: 30,
//               color: Colors.red,
//               fontWeight: FontWeight.bold
//             ),
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             title: Text('银行'),
//             icon: Icon(Icons.account_balance)
//           ),
//           BottomNavigationBarItem(
//             title: Text('联系人'),
//             icon: Icon(Icons.contacts)
//           ),
//           BottomNavigationBarItem(
//             title: Text('音乐'),
//             icon: Icon(Icons.library_music)
//           )
//         ],
//       ),
//     );
//   }
// }
