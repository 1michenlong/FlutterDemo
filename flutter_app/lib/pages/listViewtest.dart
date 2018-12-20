import 'package:flutter/material.dart';

class ListTestDemo extends StatefulWidget{

  @override
  _ListTestDemo createState() =>_ListTestDemo();
}

class _ListTestDemo extends State<ListTestDemo>{
  @override
  Widget build(BuildContext context) {
    return listViewItem2();
  }
}

Widget listViewItem1(){
  return Card(
    child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context,index){
          return ListTile(
            title: Text("duo_shine",),
            subtitle: Text("duo_shine@163.com"),
            //之前显示icon
            leading: Icon(Icons.email,color: Colors.blue,),
            //之后显示checkBox
//            trailing: Checkbox(value: null, onChanged: null),
          );
        }),
  );
}

Widget listViewItem2(){
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

Widget listViewItem3(){
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

Widget _getContainer(String context,IconData icon){
  return Container(
    width: 300.0,
    child: ListTile(
      title: Text(context,style: TextStyle(fontSize: 20.0)),
      subtitle: Text("duo_shine@163.com__"+context,style: TextStyle(fontSize: 20.0)),
      //之前显示icon
      leading: Icon(icon,color: Colors.blue,),
      //之后显示checkBox
      trailing: Icon(icon,color: Colors.red,),
    ),
  );
}