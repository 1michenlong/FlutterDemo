import 'package:flutter/material.dart';

class OtherPage extends StatefulWidget{
  String pageType;
  String userName;

  OtherPage(this.pageType,this.userName);

  _OtherPage createState()=>_OtherPage();

//  @override
//  State<StatefulWidget> createState() {
//    return _OtherPage();
//  }
}

class _OtherPage extends State<OtherPage> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }
  
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OtherPage",style: TextStyle(fontSize: 22.0,inherit: false,color: Colors.black),),
        bottom: TabBar(
            tabs: <Widget>[
              Tab(text: "标签1",icon: Icon(Icons.airline_seat_flat_angled),),
              Tab(text: "标签2",icon: Icon(Icons.airline_seat_individual_suite),),
              Tab(text: "标签3",icon: Icon(Icons.airline_seat_flat),)
            ],
        controller: _tabController,),
      ),
      body: TabBarView(
        controller: _tabController,
          children: <Widget>[
            Center(child: Text("斜躺"),),
            Center(child: Text("平躺"),),
            Center(child: Text("平躺2"),)
      ]),
    );
  }
}