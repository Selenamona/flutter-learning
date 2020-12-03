import 'package:flutter/material.dart';


// Flutter的Widgets的灵感来自React，中心思想是构造你的UI使用这些Widgets。
// Widget使用配置和状态，描述这个View（界面）应该长什么样子。
// 当一个Widget发生改变时，Widget就会重新build它的描述，框架会和之前的描述进行对比，来决定使用最小的改变（minimal changes）在渲染树中，从一个状态到另一个状态。


void main() {
  // 1.runApp函数
  runApp(
    // MaterialApp其实就是一个Widget
    // 它提供了一些好看的Theme(通过Theme属性进行控制)
    // 还提供了路由控制的功能(home属性用来控制程序入口)

// 它包含了许多Widget，这些Widget通常是实现Material Design的应用程序所必需的。
// MaterialApp 主要属性如下：

    // title ： 在任务管理窗口中所显示的应用名字
    // theme ： 应用各种 UI 所使用的主题颜色
    // color ： 应用的主要颜色值（primary color），也就是安卓任务管理窗口中所显示的应用颜色
    // home ： 应用默认所显示的界面 Widget
    // routes ： 应用的顶级导航表格，这个是多页面应用用来控制页面跳转的，类似于网页的网址
    // initialRoute ：第一个显示的路由名字，默认值为 Window.defaultRouteName
    // onGenerateRoute ： 生成路由的回调函数，当导航的命名路由的时候，会使用这个来生成界面
    // onLocaleChanged ： 当系统修改语言的时候，会触发å这个回调
    // navigatorObservers ： 应用 Navigator 的监听器
    // debugShowMaterialGrid ： 是否显示 纸墨设计 基础布局网格，用来调试 UI 的工具
    // showPerformanceOverlay ： 显示性能标签，https://flutter.io/debugging/#performanceoverlay
    // checkerboardRasterCacheImages 、showSemanticsDebugger、debugShowCheckedModeBanner 各种调试开关

      MaterialApp(
          debugShowCheckedModeBanner: false,
          theme:ThemeData(

          ),
          routes: {
            '/home':(BuildContext context) => homePage(),
            '/home/one':(BuildContext context) => homePage(),
            //....
          },
          //  Scaffold：脚手架  主要用来定义页面的基础结构，比如上导航/内容区域/下导航/侧边栏
          home: Scaffold(
            appBar: AppBar(
              title: Text("第一个Flutter程序"),
            ),
            body: Center(
              child: Text(
                "Hello World",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.orange
                ),
              ),
            ),
          )
      )
  );
}

class homePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}