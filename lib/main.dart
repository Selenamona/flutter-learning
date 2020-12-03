import 'package:flutter/material.dart';
// import './views/home/homeList.dart';
import './views/home/home.dart';
import './views/second.dart';
import './views/third.dart';
import './views/detail.dart';
import './views/clue.dart';

import 'package:fluro/fluro.dart';
import './routers/routers.dart';
import './routers//application.dart'; // 注意双斜杠

void main() {
  final router = Router(); // 获取路由对象
  Routes.configureRoutes(router); // 调用路由配置方法
  Application.router = router; // 将路由对象静态化
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter', // 在任务管理窗口中所显示的应用名字
      home: new MyHomePage(), // 默认显示的界面
      // 路由配置方式一
      // routes: <String, WidgetBuilder>{
      //   '/detail': (BuildContext context) => new Detail("1"),
      //   // '/b': (BuildContext context) => MyPage(title: 'page B'),
      //   // '/c': (BuildContext context) => MyPage(title: 'page C'),
      // },
      // 路由配置方式二
      onGenerateRoute: Application.router.generator, // 将路由配置到 MaterialApp 中
      navigatorObservers: [], // 应用 Navigator 的监听器
      // debugShowMaterialGrid: true // 用来调试 UI 的工具
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
        new HomePage(),
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
