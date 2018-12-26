import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/ApiAction.dart';
import 'package:http/http.dart' as http; //导入网络请求相关的包

class NewList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _NewList();
  }
}

class _NewList extends State<NewList>{
  List data;

  @override
  void initState() {
    super.initState();
    _pullNet();
  }

  void _pullNet() async{
        var convertDataToJson = await ApiAction.HYget();
        print(convertDataToJson);
        setState(() {
          data = convertDataToJson;
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        children: data!=null ? _getItem() : _loading(),
      ),
    );
  }

  //预加载布局
  List<Widget> _loading() {
    return <Widget>[
      Container(
        alignment: Alignment.center,
        child: new Center(
            child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(
                  strokeWidth: 1.0,),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text("正在加载"),
          ),
        ],)),)
    ];
  }

  List<Widget> _getItem() {
    return data.map((item) {
      return new Card(child: new Padding(
        padding: const EdgeInsets.all(10.0), child: _getRowWidget(item),),
        elevation: 3.0,
        margin: const EdgeInsets.all(10.0),);
    }).toList();
  }

  Widget _getRowWidget(item) {
    return new Row(children: <Widget>[
      new Flexible(
          flex: 1,
          fit: FlexFit.tight, //和android的weight=1效果一样
          child: new Stack(children: <Widget>[
            new Column(children: <Widget>[
              new Text("${item["title"]}".trim(),
                  style: new TextStyle(color: Colors.black, fontSize: 20.0,),
                  textAlign: TextAlign.left),
              new Text("${item["desc"]}", maxLines: 3,)
            ],)
          ],)
      ),
      new ClipRect(child: new FadeInImage.assetNetwork(
        placeholder: "images/header_bg.png",
        image: "${item['envelopePic']}",
        width: 50.0,
        height: 50.0,
        fit: BoxFit.fitWidth,),
      ),
    ],);
  }
}