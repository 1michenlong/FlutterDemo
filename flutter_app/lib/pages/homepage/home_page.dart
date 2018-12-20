import 'package:flutter/material.dart';

class HomePageWidget extends StatefulWidget{
  @override
  _HomePage createState() =>_HomePage();
}

class _HomePage extends State<HomePageWidget>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: "Native meum",
        onPressed: (){
            print("menu");
        },),
        title: Text("AppBar.title"),
      ),
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
            ),
          ],
        )
      ),//侧边栏按钮Drawer
      body: Center(
        child: Text("HomePage",style: TextStyle(fontSize: 30.0),),
      ),
    );
  }
}