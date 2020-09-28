import 'package:fluro/fluro.dart';
import './route_handlers.dart';

// 路由相关配置
class Routes {
  // 页面路径
  static String details = '/details/:id';
  static String cluePage = '/cluePage';
  static String requestTest = '/requestTest';
  // 创建一个 configureRoutes 方法，用于路由配置
  static void configureRoutes(Router router) {
    router.define(details, handler: detailHandler); // 详情
    router.define(cluePage, handler: clueHandler); // 线索页
    router.define(requestTest, handler: requestTestHandler); // http请求
  }
}