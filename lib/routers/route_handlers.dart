import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

// 引入路由要跳转的页面文件
// import 'package:new_flutter/views/myDemo/detail.dart';
// import 'package:new_flutter/views/myDemo/clue.dart';
// import 'package:new_flutter/views/myDemo/requestTest.dart';
// import 'package:new_flutter/views/routeTest/routeTest.dart';
import 'package:new_flutter/views/home/home.dart';
import 'package:new_flutter/views/myDemo/demo.dart';
import 'package:new_flutter/views/Personal/personalCenter.dart';

// Handler homePageHandler = Handler(
//   handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//     String id = params['id'].first; // 通过 params 获取到路由中传递的参数
//     return Detail(id);
//   },
// );

// Handler detailHandler = Handler(
//   handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//     String id = params['id'].first; // 通过 params 获取到路由中传递的参数
//     return Detail(id);
//   },
// );

// Handler clueHandler = Handler(
//   handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//     return Clue();
//   },
// );

// Handler requestTestHandler = Handler(
//   handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//     return RequestTest();
//   },
// );
// Handler routeTestHandler = Handler(
//   handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//     return RouteTest();
//   },
// );
Handler homePageHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return HomePage();
  },
);
Handler myDemoHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return MyDemo();
  },
);
Handler personalHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return PersonalCenter();
  },
);
