import 'package:flutter/material.dart';

class ListViewTask extends StatefulWidget {
  ListViewTask({Key key}) : super(key: key);

  @override
  _ListViewTaskState createState() => _ListViewTaskState();
}

class _ListViewTaskState extends State<ListViewTask> {
  List<String> items = List.generate(50, (index) => 'item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('List View 的使用'),
        centerTitle: true
      ),
      // body: getListView1(),
      // body: getListView2(),
      body: getListView3(),
    );
  }

  // 方式一：
  // getListView1() {
  //   return new ListView(
  //     scrollDirection: Axis.horizontal, // 水平方向滚定
  //     children: [
  //       new Text ('data1'),
  //       new Text ('data2'),
  //       new Text ('data3'),
  //       new Text ('data4'),
  //       new Text ('data5'),
  //       new Text ('data6'),
  //       new Text ('data7'),
  //       new Text ('data1'),
  //       new Text ('data2'),
  //       new Text ('data3'),
  //       new Text ('data4'),
  //       new Text ('data5'),
  //       new Text ('data6'),
  //       new Text ('data7')
  //     ],
  //   );
  // }

  // 方式二
  getListView2() {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        var content = items[index];
        // return Text(content);
        return new Padding(
          padding: EdgeInsets.all(20),
          child: Text(content),
        );
      }
    );
  }
  
  // 分隔线
  getListView3() {
     return ListView.separated(
      itemCount: items.length,
      separatorBuilder: (context, index) {
        // return Divider(color: Colors.red, height: 10);
        return Divider(
          color: Theme.of(context).primaryColor,
          height: 10,
          indent: 10, // 分隔线左边缩进
          endIndent: 10, // 分隔线右边缩进
        );
      },
      itemBuilder: (context, index) {
        var content = items[index];
        // return Text(content);
        return new Padding(
          padding: EdgeInsets.all(20),
          child: Text(content),
        );
      }
    );
  }

}