import 'package:flutter/material.dart';

class WrapDemo extends StatefulWidget{
  @override
  _Wrap createState() =>_Wrap();
}

class _Wrap  extends State<WrapDemo>{
  bool offstage = false;

  @override
  Widget build(BuildContext context) {
    return
//      Container(
//      margin: EdgeInsets.fromLTRB(0, 50.0, 0, 0),
//      color: Colors.white,
//      child: Wrap(
//        crossAxisAlignment: WrapCrossAlignment.center,
//        children: <Widget>[
//          Container(
//            width: 80.0,
//            height: 50.0,
//            padding: EdgeInsets.all(8.0),
//            decoration: BoxDecoration(
//                color: Colors.red,
//                borderRadius: BorderRadius.all(Radius.circular(18.0))
//            ),
//            child: Row(
//              children: <Widget>[
//                CircleAvatar(
//                  backgroundColor: Colors.blue,
//                  child: Text("t1",style: TextStyle(fontSize: 10.0),),
//                ),
//                Text("小黑",style: TextStyle(fontSize: 10.0,color: Colors.black,inherit: false),)
//              ],
//            ),
//          )
////          Chip(
//////          avatar: CircleAvatar(
//////            backgroundColor: Colors.blue,
//////            child: Text("t1",style: TextStyle(fontSize: 10.0),),
//////          ),
////          label: Text("小黑"),
////        ),
//        ],
//      ),
//    );

      Wrap(
      spacing: 18.0,
      runSpacing: 1.0,
      children: <Widget>[
//        RaisedButton(
//          color: Colors.transparent,
//          child: Offstage(
//            offstage: offstage,
//            child: labelItem(0,"t1","小黑"),
//          ),
//          onPressed: _RaisedState,
//        ),
        labelItem(0,"t1","小黑"),
        labelItem(1,"t2","人马"),
        labelItem(2,"t3","沙王"),
        labelItem(3,"t4","冰魂"),
        labelItem(4,"t5","火女"),
        labelItem(5,"t6","SF"),
        labelItem(6,"t7","鱼人"),
        labelItem(7,"t8","发条"),
        labelItem(8,"t9","小Y"),
        labelItem(9,"t10","莱恩"),
        labelItem(10,"t11","蓝胖"),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  void _RaisedState(){
    setState(() {
      offstage=!offstage;
    });
  }
}


Widget labelItem(int count,String labelText,String contentText){
  return Chip(
      avatar: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text(labelText,style: TextStyle(fontSize: 10.0),),
      ),
      label: Text(contentText),
  );
}
