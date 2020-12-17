import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  @override
  ThirdState createState() => new ThirdState();
}

class ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      /** 顶部导航栏 */
      appBar: new AppBar(
        title: new Text("界面3"),
        backgroundColor: Colors.deepOrange[300],
        actions: [
          new IconButton(icon: new Icon(Icons.search), onPressed: null),
          new IconButton(icon: new Icon(Icons.star), onPressed: null)
        ],
      ),
      /** 容器，对子组件位置大小进行约束 */
      body: new Container(
        /** 设置边距 */
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.fromLTRB(20, 20, 30, 40),
        width: double.infinity,
        /** 横向布局 */
        child: new Row(
          children: [
            /** 网络加载图片 */
            new Image.network(
              "https://img03.sogoucdn.com/app/a/100520024/da58bb2c90efff416f494eecc4a5be17",
              width: 100.0,
              height: 200.0,
            ),
            new Container(
              /** 纵向布局 */
              child: new Column(
                children: [
                  new Image.network(
                    "https://img02.sogoucdn.com/app/a/100520024/2b6acc84f93b40d33eba7c6be37efea7",
                    width: 100.0,
                    height: 200.0,
                  ),
                  new Text("handsome!")
                ],
              ),
            )
          ],
        ),
        /** 对齐方式 */
        alignment: Alignment(1, 1),
        /** 设置背景色 */
        color: Colors.greenAccent,
        // decoration: new BoxDecoration(),
      ),
      /** 浮动按钮 */
      floatingActionButton: new FloatingActionButton(
          backgroundColor: Colors.red, onPressed: null),
    );
  }
}
