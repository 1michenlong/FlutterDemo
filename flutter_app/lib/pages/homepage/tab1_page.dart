import 'package:flutter/material.dart';

class Tab1Page extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text("Tab1_Page"),
              bottom: TabBar(
                indicator: BoxDecoration(
                  border: Border.all(width: 2.0,color: Colors.yellow),
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                ),
                //下划线颜色（指示线）
                indicatorColor: Colors.red,
                  //下划线高度（指示线）
                 indicatorWeight: 5.0,
                  indicatorPadding: EdgeInsets.all(10.0),
                  //默认false TabBar满宽；ture TabBar居中显示
                  isScrollable: false,
                  labelColor: Colors.red,
                  unselectedLabelColor: Colors.white,
                  tabs: <Widget>[
                    Tab(text: "标签1",icon: Icon(Icons.airline_seat_flat_angled),),
                    Tab(text: "标签2",icon: Icon(Icons.airline_seat_individual_suite),),
                    Tab(text: "标签3",icon: Icon(Icons.airline_seat_flat),)
                ]
              ),
            ),
            body: TabBarView(
                children: <Widget>[
                  Center(child: Text("斜躺"),),
                  Center(child: Text("平躺"),),
                  Center(child: Text("平躺2"),)
            ]),
          ),

//        TabBarView(children: <Widget>[
//          Center(child: Text("斜躺"),),
//          Center(child: Text("平躺"),),
//          Center(child: Text("平躺2"),)
//        ])

    );
  }
}