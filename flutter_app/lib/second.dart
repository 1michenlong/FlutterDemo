import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(
                height: Theme.of(context).textTheme.display1.fontSize*1.1+200.0
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("http://h.hiphotos.baidu.com/zhidao/wh%3D450%2C600/"
                      "sign=0d023672312ac65c67506e77cec29e27/9f2f070828381f30dea167bbad014c086e06f06c.jpg"),
                  centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)),
              border: Border.all(width: 2.0,color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color:Colors.transparent,
            ),
            alignment: Alignment.center,
            child: Text('Hello World',style: Theme.of(context).textTheme.display1.copyWith(color: Colors.black)),
          ),
          Container(
            // 设置Container宽高，且它的优先级要高于width和height
            constraints: BoxConstraints.expand(width: 250.0,height: 250.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.yellow,width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(10.0))
            ),
//            color: Colors.red,
            child: Text("Container!"),
            height: 10.0,
            width: 10.0,
            alignment: Alignment.center,

//            height: 20.0,
//            padding: EdgeInsets.fromLTRB(0, 20.0, 0, 20),
//            color: Colors.blue,
//            alignment: Alignment.center,
//            child: RaisedButton(
//                padding: EdgeInsets.all(10.0),
//                child: Text("Button1"),
//                textColor: Colors.black,
//                onPressed: (){
//                  Scaffold.of(context).showSnackBar(SnackBar(content: Text('Button1', style: Theme.of(context).textTheme.display1.copyWith(color: Colors.red))));
//                }),
          )

        ],
      )
    );
  }


//      Container(
//        constraints: BoxConstraints.expand(
//          height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
//        ),
//          foregroundDecoration: BoxDecoration(
//              image: DecorationImage(
//              image: NetworkImage('http://h.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=0d023672312ac65c67506e77cec29e27/9f2f070828381f30dea167bbad014c086e06f06c.jpg'),
//              centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
//            ),
//              color: Colors.yellow,
//              border: Border.all(width: 2.0,color: Colors.red),
//              borderRadius: BorderRadius.all(new Radius.circular(20.0))
//          ),
//        padding: const EdgeInsets.all(8.0),
////      color: Colors.teal.shade700,
//        alignment: Alignment.center,
//          child: RaisedButton(
//  //            child: Text('Hello World', style: Theme.of(context).textTheme.display1.copyWith(color: Colors.red)),
//            child: Text('Hello World'),
//            color: Colors.black,
//            onPressed: () {
//              print("11111");
//              Scaffold.of(context).showSnackBar(SnackBar(content: Text('Hello World', style: Theme.of(context).textTheme.display1.copyWith(color: Colors.red))));
//            },
//          ),
//      transform: Matrix4.rotationZ(0.1),
//      ),
}

class Counter extends StatefulWidget{
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter>{
  int _counter=0;
  @override
  Widget build(BuildContext context) {

    return Row(
      children: <Widget>[
        Expanded(
          child: RaisedButton(
            onPressed: _increment,
            child: Text("Row.Button"),
            color: Colors.red,
            padding: EdgeInsets.all(20.0),
          ),
          flex: 1,
        ),

        Expanded(
          child: Text('Count: $_counter'),flex: 2,
        ),

        Expanded(
          child: Container(
            color: Colors.blue,
            padding: EdgeInsets.all(8.0),
            child: RaisedButton(
                onPressed:(){print("点击蓝色_容器块");},
                color: Colors.orange,
                child: Text("蓝色区域块"),
                ),
          ),
          flex: 1,
        ),

        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text("IIIII"),
        )
      ],
    );
  }

  void _increment(){
    setState(() {
      _counter++;
    });
  }
}