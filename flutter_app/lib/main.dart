import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/second.dart';
import 'package:flutter_app/pages/gridviewtest.dart';
import 'package:flutter_app/pages/tableLayout.dart';
import 'package:flutter_app/pages/WrapTest.dart';
import 'package:flutter_app/pages/listViewtest.dart';
import 'package:flutter_app/pages/homepage/home_page.dart';
void main() {
  runApp(MaterialApp(
    title: "Flutter Tutorial",
//    home: HomePageWidget(),
    home: TutorialHome(),
//    theme: TargetPlatform.iOS,
  ));

  var bicycle=Bicycle(20,30);
  print(bicycle._speed);

  print(Rectangle(origin:Point(0.0, 1.0),width: 100).width);

  var ksf_egg=createNoodlerFactory(1);
  print("康师傅加蛋=="+(ksf_egg.noodlesPrice).toString());

  var ty_sausage=createNoodlerFactory(2);
  print("统一加火腿肠=="+(ty_sausage.noodlesPrice).toString());
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null),
//        title: MyHome(),//Text("AppBar.title"),
            title: Text("AppBar.title"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search), tooltip: "search", onPressed: null)
        ],
      ),
//      body: WrapDemo(),

     body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                child: Text("基本Widget",style: TextStyle(fontSize: 20.0,color: Colors.red),),
                color: Colors.white,
                onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Counter()));
                }),
            RaisedButton(
                child: Text("表格TabWidget",style: TextStyle(fontSize: 20.0,color: Colors.red),),
                color: Colors.white,
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>FlowDemo()));
                }),
            RaisedButton(
                child: Text("GridViewWidget",style: TextStyle(fontSize: 20.0,color: Colors.red),),
                color: Colors.white,
                onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>MyGridView()));
                }),
            RaisedButton(
                child: Text("ListViewWidget",style: TextStyle(fontSize: 20.0,color: Colors.red),),
                color: Colors.white,
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>ListTestDemo()));
                }),
            RaisedButton(
                child: Text("HomePageWidget",style: TextStyle(fontSize: 20.0,color: Colors.red),),
                color: Colors.white,
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> HomePageWidget("main")));
                }),
//          Counter(),
//          MyGridView(),
//          FlowDemo(),
//          WrapDemo(),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
          tooltip: "Add", child: Icon(Icons.add), onPressed: null),
    );
  }
}

//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'home', // 默认标题
//      home: new HomePage(), // 返回的界面
//    );
//  }
//}
//
//class HomePage extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() => new _HomePageState();
//}
//
//class _HomePageState extends State<HomePage>{
//  @override
//  Widget build(BuildContext context) {
//    return new DefaultTabController(
//        length: 3,
//        initialIndex: 0,
//        child: new Scaffold(
//
//        ));
//  }
//}

//class _HomePageState extends State<HomePage> {
//
//  int index = 0;
//
//  var homePage;
//  var bookPage;
//  var musicPage;
//
//  _getbody() {
//    switch (index) {
//      case 0:
//        if (homePage == null) {
//          homePage = new TabBarView(
//            children: [
//              new Center(
////                child: new bannerView(),
//              ),
//              new Center(
//                  child: new Text("图书")
//              ),
//              new Center(
//                  child: new Text("我的")
//              ),
//            ],
//          );
//        }
//        return homePage;
//      case 1:
//        if (bookPage == null) {
//          bookPage = new Center(child: new Text("图书"));
//        }
//        return bookPage;
//      case 2:
//        musicPage = new Center(
//          child: new Text('音乐'),
//        );
//        return musicPage;
//    }
//  }
//  //获取标题的方法
//  _getTitle() {
//    switch (index) {
//      case 0:
//        return _forMatchTitle('电影');
//      case 1:
//        return _forMatchTitle('图书');
//      case 2:
//        return _forMatchTitle('音乐');
//    }
//  }
//
//  //formatch标题
//  _forMatchTitle(String data) {
//    return new Text(data);
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new DefaultTabController(
//      length: 3,// 长度为3
//      initialIndex: 0,// 默认索引0
//      child: new Scaffold(
//        appBar: new AppBar(
//          title: _getTitle(),
//          // 如果是第一个则显示tab，否则不显示
//          bottom: index == 0 ? new TabBar(
//              tabs: [
//                new Tab(icon: new Icon(Icons.video_call)),
//                new Tab(icon: new Icon(Icons.book)),
//                new Tab(icon: new Icon(Icons.person)),
//              ]
//          ) : null,
//        ),
//
//        body: _getbody(),
//
//        drawer: new Drawer(
//          elevation: 8.0,
//          semanticLabel: '滑动抽屉',
//          child: new DrawerLayout(),
//        ),
//        bottomNavigationBar: new BottomNavigationBar(
//            onTap: _selectPosition,
//            currentIndex: index,
//            type: BottomNavigationBarType.fixed,
//            iconSize: 24.0,
//            items: new List<BottomNavigationBarItem>.generate(3, (index) {
//              switch (index) {
//                case 0:
//                  return new BottomNavigationBarItem(
//                      icon: new Icon(Icons.movie), title: new Text('电影'));
//                case 1:
//                  return new BottomNavigationBarItem(
//                      icon: new Icon(Icons.book), title: new Text('图书'));
//                case 2:
//                  return new BottomNavigationBarItem(
//                      icon: new Icon(Icons.music_note), title: new Text('音乐'));
//              }
//            })),
//      ),
//    );
//  }
//
//  _selectPosition(int index) {
//    if (this.index == index) return;
//    setState(() {
//      this.index = index;
//    });
//  }
//
//}
//// 抽屉
//class DrawerLayout extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new ListView(
//      children: <Widget>[
//        new DrawerHeader(
//          decoration: new BoxDecoration(
//            color: Colors.grey[400],
//          ),
//          child: new Column(
//            children: <Widget>[
//              new Expanded(
//                child: new Align(
//                  alignment: Alignment.bottomCenter,
//                  child: new Column(
//                    children: <Widget>[
//                      new CircleAvatar(
//                        child: new Text('R'),
//                      ),
//                      new Text('YangZhe', style: Theme
//                          .of(context)
//                          .textTheme
//                          .title),
//                    ],
//                  ),
//                ),
//              ),
//            ],
//          ),
//        ),
//        new AboutListTile(
//          icon: new Icon(Icons.person),
//          child: new Text('关于项目'),
//          applicationLegalese: '',
//          applicationName: 'Flutter Demo',
//          applicationVersion: 'version:0.1',
//        ),
//      ],
//    );
//  }
//}

class Bicycle{
  int candle;
  int name;
  int _speed;

  int get speed => _speed;

//  Bicycle(int candles,int speed){
//    this.candles=candles;
//    this.speed=speed;
//  }

  //跟上面效果一样
  Bicycle(this.candle,this._speed);
}

class Rectangle {
  int width;
  int height;
  Point origin;

  //构造重载方式
  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});
}

//工厂模式
 abstract class INoodles{
   //面价
   final double noodlerPrice = 3.9;
   /**
    * 价格
    */
   double get noodlesPrice;
 }

 class KSFNoodles extends INoodles{
  //面条配料  蛋
  int egg;
  KSFNoodles(this.egg);
  @override
  double get noodlesPrice => egg*3.2*noodlerPrice;
 }

 class TYNoodles extends INoodles{
   //面条配料  火腿肠
   int sausage;
   TYNoodles(this.sausage);
  @override
  double get noodlesPrice => sausage*5.5*noodlerPrice;
 }

INoodles createNoodlerFactory(int type){
  //康师傅
  final int KSFnoodler = 1;
  //统一
  final int TYnoodler = 2;
  if(type==KSFnoodler){
    return KSFNoodles(2);
  }else if(type==TYnoodler){
    return TYNoodles(3);
  }
}

