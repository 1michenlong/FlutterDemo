import 'package:flutter/material.dart';

import 'package:flutter_app/pages/homepage/other_page.dart';
import 'package:flutter_app/pages/homepage/tab1_page.dart';

class HomePageWidget extends StatefulWidget{
  String pageType;
  HomePageWidget(this.pageType);

  @override
  _HomePage createState() =>_HomePage();
}

class _HomePage extends State<HomePageWidget>{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: "Native meum",
            onPressed: (){
                print("menu");
            },),
          title: Text("AppBar.title"),
          bottom: TabBar(tabs:<Widget>[
            Tab(child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("标签1"),
                  Icon(Icons.airline_seat_flat_angled)
                ],
              ),
            ),
//            Tab(text: "标签1",icon: Icon(Icons.airline_seat_flat_angled),),
            Tab(text: "标签2",icon: Icon(Icons.airline_seat_individual_suite),),
            Tab(text: "标签3",icon: Icon(Icons.airline_seat_flat),)
          ]),
        ),

        body: TabBarView(children: <Widget>[
            Center(child: Text("斜躺"),),
            Center(child: Text("平躺"),),
            Center(child: Text("平躺2"),)
        ]),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                  accountName: Text("android_陈龙"),
                  accountEmail: Text("long.chen@1mifudao.com"),
                  currentAccountPicture: GestureDetector(
                    onTap:()=>print("用户头像"),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage("https://upload.jianshu.io/users/upload_avatars/7700793/dbcf94ba-9e63-4fcf-aa77-361644dd5a87?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240"),
                    ),
                  ),
                otherAccountsPictures: <Widget>[
                  GestureDetector(
                    onTap: (){
                      print(Text("其他用户点击"));
                    },
                    child: CircleAvatar(
                      backgroundImage: NetworkImage("https://upload.jianshu.io/users/upload_avatars/8346438/e3e45f12-b3c2-45a1-95ac-a608fa3b8960?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240"),
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://upload.jianshu.io/users/upload_avatars/8346438/e3e45f12-b3c2-45a1-95ac-a608fa3b8960?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240"),
                  ),
                ],

//              decoration: BoxDecoration(
//                image: DecorationImage(
//                    fit: BoxFit.fill,
//                    image: ExactAssetImage("images/header_bg.png")
//                )
//              ),
              ),

              ListTile(
                leading: Icon(Icons.ac_unit),
                title: Text("first_page"),
                onTap: (){
                  Navigator.of(context).pop();  //点击后收起侧边栏
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>OtherPage("first","chenlong")));
                  print("first_page_click");
                },
              ),

              ListTile(
                leading: Icon(Icons.ac_unit),
                title: Text("second_page"),
                onTap: (){
                  Navigator.of(context).pop();  //点击后收起侧边栏
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Tab1Page()));
                  print("second_page_click");
                },
              ),

              ListTile(
                leading: Icon(Icons.ac_unit),
                title: Text("third_page"),
                onTap: (){
                  print("third_page_click");
                },
              ),

              ListTile(
                leading: Icon(Icons.ac_unit),
                title: Text("fourth_page"),
                onTap: (){
                  print("fourth_page_click");
                },
              ),

              Divider(
                color: Colors.red,
              )
            ],
          )
        ),//侧边栏按钮Drawer
      ),
    );
  }
}