import 'package:flutter/material.dart';
import './views/first.dart';
import './views/second.dart';
import './views/third.dart';
import './views/detail.dart';
import './views/clue.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/detail': (BuildContext context) => new Detail("1"),
        // '/b': (BuildContext context) => MyPage(title: 'page B'),
        // '/c': (BuildContext context) => MyPage(title: 'page C'),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /** 脚手架 */
    return new Scaffold(
      body: new TabBarView(controller: controller, children: <Widget>[
        new First(),
        new Second(),
        new Clue(),
        new Third()
      ]),
      /** 底部导航栏 */
      bottomNavigationBar: new Material(
        color: Colors.orangeAccent,
        child: new TabBar(controller: controller, tabs: <Tab>[
          new Tab(
            text: "列表",
            icon: new Icon(Icons.home),
          ),
          new Tab(
            text: "通知",
            icon: new Icon(Icons.message),
          ),
          new Tab(
            text: "线索",
            icon: new Icon(Icons.message),
          ),
          new Tab(
            text: "我的",
            icon: new Icon(Icons.cloud),
          ),
        ]),
      ),
    );
  }
}
