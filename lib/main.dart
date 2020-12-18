import 'package:flutter/material.dart';
import 'package:new_flutter/views/sellCars/sellCars.dart';

import './views/home/home.dart';
import './views/buyCars/buyCars.dart';
import './views/myDemo/demo.dart';
import './views/sellCars/sellCars.dart';
import './views/personal/personalCenter.dart';

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
  int currentIndex = 0;
  Map<int, Widget> pageMap = {
    0: HomePage(),
    1: BuyCars(),
    2: MyDemo(),
    3: SellCars(),
    4: PersonalCenter()
  };

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /** 脚手架 */
    return new Scaffold(
        body: pageMap[this.currentIndex],
        /** 底部导航栏 */
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: (event) {
            this.setState(() {
              this.currentIndex = event;
            });
          },
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页'),
              activeIcon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              title: Text('买车'),
              activeIcon: Icon(Icons.view_quilt),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.near_me),
              title: Text('发现'),
              activeIcon: Icon(Icons.navigation),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text('卖车'),
              activeIcon: Icon(Icons.shopping_cart),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('我的'),
              activeIcon: Icon(Icons.face),
            ),
          ],
        ));
  }
}
