import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../routers//application.dart';

class Detail extends StatelessWidget {
  // 配置接收的参数
  final String id;
  Detail(this.id);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("列表详情")),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text("这是详情页，id为" + id),
            RaisedButton(
              child: Text("http请求"),
              onPressed: () {
                Application.router.navigateTo(context, '/requestTest');
              },
            ),
            RaisedButton(
              child: Text("路由测试"),
              onPressed: () {
                Application.router.navigateTo(context, '/routeTest');
              },
            ),
            RaisedButton(
              child: Text("返回"),
              onPressed: () {
                // 路由跳转方式一：flutter 自带的 Navigator widget 提供的 pop 方法
                // Navigator.pop(context);
                // 路由跳转方式二： fluro 中提供的 pop 方法
                Application.router.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
