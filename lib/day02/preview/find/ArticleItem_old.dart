import 'package:flutter/material.dart';
import 'package:flutter_study/day02/preview/find/Article.dart';

class ArticleItem extends StatelessWidget {

  final Article model;
  ArticleItem(this.model);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 150,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            // Border(bottom: BorderSide(color: Theme.of(context).dividerColor)),
            children: <Widget>[
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(model.logo),
                    fit: BoxFit.cover 
                  )
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
                    style: TextStyle(fontSize: 18, color: Colors.black ),
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
        ),
      ),
    );
  }
}