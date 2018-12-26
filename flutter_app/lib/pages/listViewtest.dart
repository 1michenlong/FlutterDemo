import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/ApiAction.dart';
import 'package:flutter_app/pages/news/Model.dart';

class ListTestDemo extends StatefulWidget {
  @override
  _ListTestDemo createState() => _ListTestDemo();
}

class _ListTestDemo extends State<ListTestDemo> {
  String dataStr = "";
  var _items = [];
  
  @override
  Widget build(BuildContext context) {
    print("build");
    return layout(context);
  }

  @override
  void initState() {
    print("initState");
    super.initState();
  }

  Widget layout(BuildContext context){
    return new Scaffold(
      appBar: AppBar(title: Text("列表"),),
      body: listViewItem1(),
    );

}

Widget itemView(BuildContext context, int index) {
  Model model = this._items[index];
  //设置分割线
  if (index.isOdd) return new Divider(height: 2.0);
  return new Container(
      color: Color.fromARGB(0x22, 0x49, 0xa9, 0x8d),
      child: new Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Column(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new Text('${model.year}年${model.month}月${model.day}日',
                          style: new TextStyle(fontSize: 15.0)),
                      new Text('(${model.lunar})',
                          style: new TextStyle(fontSize: 15.0)),
                    ],
                  ),
                  new Center(
                    heightFactor: 6.0,
                    child: new Text("${model.title}",
                        style: new TextStyle(fontSize: 17.0)),
                  )
                ],
              ))));

//  Model model = this._items[index];
//  return Card(
//    child: ListTile(
//      title: Text('${model.year}年${model.month}月${model.day}日',style: TextStyle(fontSize: 18.0,inherit: false,color: Colors.deepOrange),),
//      subtitle: Text(model.des,style: TextStyle(fontSize: 15.0,inherit: false,color: Colors.black12),),
//    ),
//  );
}


Widget getTodayDes(var items){
  return Card(
    child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              "duo_shine",
            ),
            subtitle: Text("duo_shine@163.com"),
            //之前显示icon
            leading: Icon(
              Icons.email,
              color: Colors.blue,
            ),
            //之后显示checkBox
//            trailing: Checkbox(value: null, onChanged: null),
          );
        }),
  );
}

Widget listViewItem1() {
  return Card(
    child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              "duo_shine",
            ),
            subtitle: Text("duo_shine@163.com"),
            //之前显示icon
            leading: Icon(
              Icons.email,
              color: Colors.blue,
            ),
            //之后显示checkBox
//            trailing: Checkbox(value: null, onChanged: null),
          );
        }),
  );
}

Widget listViewItem2() {
  return Card(
    child: ListView(
      children: <Widget>[
        _getContainer('Maps', Icons.map),
        _getContainer('phone', Icons.phone),
        _getContainer('Maps', Icons.map),
        _getContainer('Email', Icons.email),
      ],
    ),
  );
}

Widget listViewItem3() {
  return Card(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        _getContainer('Maps', Icons.map),
        _getContainer('phone', Icons.phone),
        _getContainer('Maps', Icons.map),
        _getContainer('Email', Icons.email),
      ],
    ),
  );
}

  Widget _getContainer(String context, IconData icon) {
    return Container(
      width: 300.0,
      child: ListTile(
        title: Text(context, style: TextStyle(fontSize: 20.0)),
        subtitle: Text("duo_shine@163.com__" + context,
            style: TextStyle(fontSize: 20.0)),
        //之前显示icon
        leading: Icon(
          icon,
          color: Colors.blue,
        ),
        //之后显示checkBox
        trailing: Icon(
          icon,
          color: Colors.red,
        ),
      ),
    );
  }
}

