import 'package:flutter/material.dart';
import 'package:flutter_study/day03/mine/SecondScreen.dart';

class MineScreen extends StatelessWidget {
  const MineScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('我的'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text('静态路由跳转'),
              onPressed: (){
                Navigator.of(context).pushNamed('/second').then((value) => {
                  print(value) // 返回时触发，往回传参
                });
              },
            ),
            RaisedButton(
              child: Text('动态路由跳转'),
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => new SecondScreen(content: '动态路由传参',)
                ));
              },
            ),
            RaisedButton(
              child: Text('自动定义动画'),
              onPressed: () {
                Navigator.push(context,
                new PageRouteBuilder(
                  pageBuilder: (context, _, __) { // _表示不需要入参，双下划线只是为了和前面的区分
                    return SecondScreen(content: '自定义动画');
                  },
                  transitionsBuilder: (_, Animation<double>animation,__,Widget child) {
                    return new FadeTransition(
                      opacity: animation,
                      child: new SlideTransition(
                        child: child,
                        position: new Tween<Offset>(
                          begin: Offset(0,1),
                          end: Offset.zero
                        ).animate(animation)
                      ),
                    );
                  }
                )
              );
              },
            )
          ],
        )
      ),
    );
  }
}
