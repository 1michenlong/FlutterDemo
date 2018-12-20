import 'package:flutter/material.dart';

class MyGridView extends StatefulWidget{
  @override
  _MyGridView createState()=>_MyGridView();
}

class _MyGridView extends State<MyGridView>{

  @override
  Widget build(BuildContext context) {
    return _gridView3();
  }
}

//gridView1
Widget _gridView1(){
  return GridView.extent(
      shrinkWrap: true,
      maxCrossAxisExtent: 180.0,
      padding: EdgeInsets.all(4.0),
      //主轴间隔
      mainAxisSpacing: 4.0,
      //横轴间隔
      crossAxisSpacing: 4.0,
      children: adapterItem(10),

//      children: List.generate(20,
//              (index){
//        return Text("Item=="+index.toString(),
//          style: TextStyle(
//              fontSize: 20.0,
//              color: Colors.red
//          ),);
//      })
  );
}

//gridView2
Widget _gridView2(){
  return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 5,
      padding: EdgeInsets.all(4.0),
      //主轴间隔
      mainAxisSpacing: 4.0,
      //横轴间隔
      crossAxisSpacing: 4.0,
      children: adapterItem(10),
  );
}

//滚动效果的ScrollView
Widget _gridView3(){
  Widget scrollview = Container(
   color: Colors.white,
   child: CustomScrollView(
      primary: false,
      shrinkWrap: true,
      slivers: <Widget>[
        SliverPadding(
            sliver: SliverGrid.count(
              //横轴数量 这里的横轴就是x轴 因为方向是垂直的时候 主轴是垂直的
               crossAxisCount: 4,
              crossAxisSpacing: 20.0,
              children: adapterItem(50),
            ),
            padding: EdgeInsets.all(10.0))
      ],
    ),
 );

  return scrollview;
}

Widget _gridView4(){
  return GridView.custom(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 5.0,
          crossAxisCount: 4),

        childrenDelegate: new SliverChildBuilderDelegate(
              (context, index) {
            return Container(
              child: Text(
                "Item=="+index.toString(),
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.red
                ),
              ),
            );
          },
          childCount: 30,
        ),
  );
}

List<Container> adapterItem(int count){
  return List.generate(
      count,
      (index) => Container(
        alignment: Alignment.center,
        child: Text(
          "Item=="+index.toString(),
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.red,
            inherit: false
          ),),
      )
  );
}