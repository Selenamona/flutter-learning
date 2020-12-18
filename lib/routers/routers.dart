import 'package:fluro/fluro.dart';
import './route_handlers.dart';

// 路由相关配置
class Routes {
  // 页面路径
  static String homeList = '/homeList';
  static String details = '/details/:id';
  static String cluePage = '/cluePage';
  static String requestTest = '/requestTest';
  static String routeTest = '/routeTest';
  static String inputTest = '/inputTest';
  static String styleTest = '/styleTest';

  static String homePage = '/home';
  static String myDemo = '/myDemo';
  static String sellCars = '/sellCars';
  static String personal = '/personal';
  // 创建一个 configureRoutes 方法，用于路由配置
  static void configureRoutes(Router router) {
    router.define(homePage, handler: homePageHandler); // 详情
    router.define(myDemo, handler: myDemoHandler); // 发现-demo
    router.define(sellCars, handler: sellCarsHandler); // 卖车
    router.define(personal, handler: personalHandler); // 个人中心

    router.define(homeList, handler: homeListHandler); // 详情
    router.define(details, handler: detailHandler); // 详情
    router.define(cluePage, handler: clueHandler); // 线索页
    router.define(requestTest, handler: requestTestHandler); // http请求
    router.define(routeTest, handler: routeTestHandler); // 路由测试
    router.define(inputTest, handler: inputTestHandler); // 路由测试
    router.define(styleTest, handler: styleTestHandler); // 路由测试
  }
}
