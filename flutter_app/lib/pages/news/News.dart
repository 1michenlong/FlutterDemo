import 'package:flutter/material.dart';
import 'package:flutter_app/pages/ApiAction.dart';
import 'dart:convert';
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

class News extends StatefulWidget{
  String data;

  //StatefulWidget构造方法
  News({Key key,String data});

  @override
  _News createState() =>_News();
}

class _News extends State<News> with SingleTickerProviderStateMixin{

  List<NewsTab> myTabs = <NewsTab>[
    NewsTab("头条",NewsList(newsType: 'toutiao')),
    NewsTab('社会',NewsList(newsType: 'shehui')),
    NewsTab('国内',NewsList(newsType: 'guonei')),
    NewsTab('国际',NewsList(newsType: 'guoji')),
    NewsTab('娱乐',NewsList(newsType: 'yule')),
    NewsTab('体育',NewsList(newsType: 'tiyu')),
    NewsTab('军事',NewsList(newsType: 'junshi')),
    NewsTab('科技',NewsList(newsType: 'keji')),
    NewsTab('财经',NewsList(newsType: 'caijing')),
    NewsTab('时尚',NewsList(newsType: 'shishang')),
  ];

  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: myTabs.length, vsync: this);
    super.initState();
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
        title: TabBar(
            controller: _tabController,
            tabs: myTabs.map((item){
                return Tab(text: item.text??'错误');
            }).toList(),
        indicatorColor: Colors.white,
        isScrollable: true,),
      ),
      body: TabBarView(
          controller: _tabController,
          children: myTabs.map((item){
            return item.newsList;
          }).toList()),
    );
  }
}

//实体类
class NewsTab{
  String text;
  NewsList newsList;
  NewsTab(this.text,this.newsList);
}

class NewsList extends StatefulWidget{
  String newsType;    //新闻类型
  @override
  NewsList({Key key, this.newsType} ):super(key:key);

  @override
  _NewsList createState() =>_NewsList();
}

class _NewsList extends State<NewsList>{
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Text(widget.newsType,style: TextStyle(fontSize: 25.0,color: Colors.red,inherit: false),),
    );
  }
}