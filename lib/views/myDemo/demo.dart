import 'package:flutter/material.dart';
import '../../routers//application.dart';

class MyDemo extends StatefulWidget {
  @override
  _MyDemoState createState() => _MyDemoState();
}

class _MyDemoState extends State<MyDemo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RaisedButton(
          child: Text("input"),
          onPressed: () {
            Application.router.navigateTo(context, '/inputTest');
          },
        ),
        RaisedButton(
          child: Text("线索页面-样式"),
          onPressed: () {
            Application.router.navigateTo(context, '/cluePage');
          },
        ),
        RaisedButton(
          child: Text("样式"),
          onPressed: () {
            Application.router.navigateTo(context, '/styleTest');
          },
        ),
        RaisedButton(
          child: Text("列表跳转详情"),
          onPressed: () {
            Application.router.navigateTo(context, '/homeList');
          },
        ),
        RaisedButton(
          child: Text("路由测试"),
          onPressed: () {
            Application.router.navigateTo(context, '/routeTest');
          },
        ),
        RaisedButton(
          child: Text("http请求"),
          onPressed: () {
            Application.router.navigateTo(context, '/requestTest');
          },
        ),
      ],
    );
  }
}
