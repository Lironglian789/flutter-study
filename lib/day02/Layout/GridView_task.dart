import 'package:flutter/material.dart';

class GridViewTask extends StatefulWidget {
  GridViewTask({Key key}) : super(key: key);

  @override
  _GridViewTaskState createState() => _GridViewTaskState();
}

class _GridViewTaskState extends State<GridViewTask> {
  List<String> items = List.generate(50, (index) => 'item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('GridView 的使用'),
        centerTitle: true,
      ),
      body: getGridView3(),
    );
  }

  // 方法一
  getGridView1() {
    return GridView.count(
      crossAxisCount: 3, // 每行显示的数量
      crossAxisSpacing: 10, // 网格左边间距
      mainAxisSpacing: 10, // 网格底部边距
      padding: EdgeInsets.all(10), // 网格与设备的间距
      children: getWidgetList(),
    );
  }

  // 方法二
  getGridView2() {
    return new GridView.builder(
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 横轴元素个数
        crossAxisSpacing: 10, //横轴间距
        mainAxisSpacing: 10, //纵轴间距
        childAspectRatio: 0.5, // 设置宽高比例
      ), 
      itemBuilder: (context, index) {
        return getItemContainer(items[index]);
      }
    );
  }

  getGridView3() {
    return new GridView.builder(
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 120,  //单个⼦Widget的⽔平最⼤宽度
        crossAxisSpacing: 10, //⽔平单个⼦Widget之间间距
        mainAxisSpacing: 10, //垂直单个⼦Widget之间间距
        // childAspectRatio: 0.5, // 设置宽高比例
      ), 
      itemBuilder: (context, index) {
        return getItemContainer(items[index]);
      }
    );
  }

  List<Widget> getWidgetList() {
    return items.map((item) => getItemContainer(item)).toList();
  }

  // 网格 item
  Widget getItemContainer(String item) {
    return Container(
      alignment: Alignment.center,  // bottomCenter
      color: Colors.orange,
      child: Text(
        item,
        overflow: TextOverflow.ellipsis, // 文本溢出处理
        style: TextStyle(
          color: Colors.white,
          fontSize: 80
        ),
      ),
    );
  }


}