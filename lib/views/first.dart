import 'package:flutter/material.dart';
import '../components/list.dart';

class First extends StatefulWidget {
  @override
  FirstState createState() => new FirstState();
}

class FirstState extends State<First> {
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
