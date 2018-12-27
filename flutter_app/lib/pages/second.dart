import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyanAccent,
      child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(
                    height:
                        Theme.of(context).textTheme.display1.fontSize * 1.1 +
                            200.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "http://h.hiphotos.baidu.com/zhidao/wh%3D450%2C600/"
                          "sign=0d023672312ac65c67506e77cec29e27/9f2f070828381f30dea167bbad014c086e06f06c.jpg"),
                      centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)),
                  border: Border.all(width: 2.0, color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.transparent,
                ),
                alignment: Alignment.center,
                child: Text('Hello World',
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .copyWith(color: Colors.black)),
              ),
              Padding(
                key: Key("padding2"),
                padding: EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.red,
                  child: Text("CardPadding"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.yellow,
                  child: Align(
                    key: Key("Align.key"),
                    //widthFactor：宽度因子，如果设置的话，Align的宽度就是child的宽度乘以这个值，不能为负数。
                    //heightFactor：高度因子，如果设置的话，Align的高度就是child的高度乘以这个值，不能为负数。
                    widthFactor: 2.0,
                    heightFactor: 2.0,
                    child: Text("AlignKey"),
                  ),
                ),
              ),
              Container(
                // 设置Container宽高，且它的优先级要高于width和height
                constraints: BoxConstraints.expand(width: 120.0, height: 120.0),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.yellow, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
//            color: Colors.red,
                child: Text("Container!"),
                height: 10.0,
                width: 10.0,
                alignment: Alignment.center,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 2.0),
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  color: Colors.orange,
                  width: 200.0,
                  height: 50.0,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.center,
                    child: Text("FittedBox"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 20.0,
                      child: AspectRatio(
                        //宽高比
                        aspectRatio: 1.5,
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.purple,
                      child: Row(
                        children: <Widget>[
                          Baseline(
                            baseline: 50.0,
                            baselineType: TextBaseline.ideographic,
                            child: new Text(
                              'TjTjTj',
                              style: new TextStyle(
                                fontSize: 20.0,
                                textBaseline: TextBaseline.ideographic,
                              ),
                            ),
                          ),
                          Baseline(
                            baseline: 50.0,
                            baselineType: TextBaseline.ideographic,
                            child: new Container(
                              width: 30.0,
                              height: 30.0,
                              color: Colors.red,
                            ),
                          ),
                          Baseline(
                            baseline: 50.0,
                            baselineType: TextBaseline.ideographic,
                            child: new Text(
                              'RyRyRy',
                              style: new TextStyle(
                                fontSize: 35.0,
                                textBaseline: TextBaseline.ideographic,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
      ),
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


class Counter extends StatefulWidget {
  String data;
  Counter({Key key,this.data}):super(key:key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  bool offstage = false;
  @override
  Widget build(BuildContext context) {
    Widget column1 = Container(
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(0, 30.0, 0, 0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  onPressed: _increment,
                  child: Text("Row.Button",style: TextStyle(fontSize: 13.0,color: Colors.white),),
                  color: Colors.red,
                  padding: EdgeInsets.all(10.0),
                ),
                flex: 1,
              ),
              Expanded(
                child: Text('Count: $_counter',style: TextStyle(fontSize: 15.0,color: Colors.red,inherit: false),),
                flex: 2,
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(3.0),
                  child: RaisedButton(
                    onPressed: () {
                      print("点击蓝色_容器块");
                    },
                    color: Colors.orange,
                    child: Text("蓝色区域块",style: TextStyle(fontSize: 12.0),),
                  ),
                ),
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text("IIIII",style: TextStyle(fontSize: 12.0,inherit: false),),
              )
            ],
          ),

          Column(
            mainAxisSize: MainAxisSize.max,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Offstage(
                offstage: offstage,
                child: Text("OffstageState",style: TextStyle(fontSize: 20.0,color: Colors.red,inherit: false),),
              ),

              RaisedButton(
                color: Colors.cyanAccent,
                child: Text("点击切换state"),
                onPressed:_RaisedState,
              ),

              Icon(
                Icons.star,
                color: Colors.purple,
              )
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildButtonColumn(Icons.call, 'CALL'),
              buildButtonColumn(Icons.near_me, 'ROUTE'),
              buildButtonColumn(Icons.share, 'SHARE'),
            ],
          ),

          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Stack(
                alignment: Alignment(0.6, 0.6),
                fit: StackFit.loose,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage:  NetworkImage(
                        "http://h.hiphotos.baidu.com/zhidao/wh%3D450%2C600/"
                            "sign=0d023672312ac65c67506e77cec29e27/9f2f070828381f30dea167bbad014c086e06f06c.jpg"),
                    radius: 80.0,
                  ),

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent
                    ),

                    child: Text(
                      "Name",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.red
                          ,inherit: false
                      ),
                    ),
                  )
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IndexedStack(
                  index: 1,//显示chlid 第几个元素
                  alignment: Alignment(0.6, 0.6),
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage("http://h.hiphotos.baidu.com/zhidao/wh%3D450%2C600/"
                          "sign=0d023672312ac65c67506e77cec29e27/9f2f070828381f30dea167bbad014c086e06f06c.jpg"),
                      radius: 50.0,
                    ),

                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red
                        ),

                        child: Text("go back",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.blue,
                            inherit: false
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
    return column1;
  }

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  // ignore: non_constant_identifier_names
  void _RaisedState(){
    setState(() {
      offstage=!offstage;
    });
  }

  //显示图标+标题的item
  Column buildButtonColumn(IconData icon,String label) {
    Color color = Theme.of(context).primaryColor;
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon,color: color,),
        Container(
          margin: EdgeInsets.only(top: 5.0),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
                inherit: false
            ),),
        )
      ],
    );
  }
}

