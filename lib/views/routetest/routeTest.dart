import 'package:flutter/material.dart';

class RouteTest extends StatefulWidget {
  @override
  _RouteTestState createState() => _RouteTestState();
}

class _RouteTestState extends State<RouteTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("路由测试")),
      body: Container(
          child: Column(
        children: [
          // 漂浮"按钮，它默认带有阴影和灰色背景。按下后，阴影会变大
          RaisedButton(
            child: Text("基本使用"),
            onPressed: () {
              // Navigator.of(
              //   context,
              // );
            },
          ),
          // 带图标的按钮
          RaisedButton.icon(
            icon: Icon(Icons.send),
            label: Text("发送"),
            onPressed: () {},
          ),
          // 扁平按钮，默认背景透明并不带阴影。按下后，会有背景色
          FlatButton(
            child: Text("传参数跳转"),
            onPressed: () {},
          ),
          // 默认有一个边框，不带阴影且背景透明。按下后，边框颜色会变亮、同时出现背景和阴影(较弱)
          OutlineButton(
            child: Text("normal"),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.thumb_up),
            onPressed: () {},
          ),
          // 自定义按钮
          FlatButton(
            color: Colors.blue,
            highlightColor: Colors.blue[700],
            colorBrightness: Brightness.dark,
            splashColor: Colors.grey,
            child: Text("Submit"),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            onPressed: () {},
          )
        ],
      )),
    );
  }
}
