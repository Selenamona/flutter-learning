import 'package:flutter/material.dart';
import './list.dart';

// 列表跳转详情

class HomeList extends StatefulWidget {
  @override
  HomeListState createState() => new HomeListState();
}

class HomeListState extends State<HomeList> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      /** 顶部导航栏 */
      appBar: new AppBar(
        title: new Text("界面1"),
      ),
      /* 容器，对子组件位置大小进行约束 */
      body: new Container(
        child: new List(),
      ),
    );
  }
}
