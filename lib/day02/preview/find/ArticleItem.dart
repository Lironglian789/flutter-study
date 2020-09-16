import 'package:flutter/material.dart';
import 'package:flutter_study/day02/preview/find/Article.dart';

class ArticleItem extends StatelessWidget {
  final Article model;
  ArticleItem(this.model);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(
          color: Color.fromARGB(40, 0, 0, 0),
          offset: Offset(0, 2.0), //阴影xy轴偏移量
          blurRadius: 2.0, //阴影模糊程度
          spreadRadius: 0 //阴影扩散程度
        )]
      ),
      // height: 210,
      child: Card(
        child: new Column(
        children: [
          Row(
            // Border(bottom: BorderSide(color: Theme.of(context).dividerColor)),
            children: <Widget>[
              Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(model.logo), fit: BoxFit.cover)
                    )
                  ),
              new Column(
                children: [
                  new Container(
                    width: 180,
                    height: 120,
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Text(
                      model.location,
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ],
              ),
              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '|' + model.type,
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  Text(
                    '|' + model.size,
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  Text(
                    '|' + model.employee,
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )
                ],
              )
            ],
          ),
          new Divider(color: Colors.grey),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              new Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    child: Text(
                      '热招：' + model.hot + model.count + '个职位',
                      style:  TextStyle(
                        fontSize: 18
                      ),
                    ),
                  )
                ],
              ),
              new Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: new Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      )),
    );
  }
}
