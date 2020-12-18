import 'package:fluro/fluro.dart';
import './route_handlers.dart';

// 路由相关配置
class Routes {
  // 创建一个 configureRoutes 方法，用于路由配置
  static void configureRoutes(Router router) {
    router.define('/home', handler: homePageHandler); // 详情
    router.define('/myDemo', handler: myDemoHandler); // 发现-demo
    router.define('/sellCars', handler: sellCarsHandler); // 卖车
    router.define('/personal', handler: personalHandler); // 个人中心

    router.define('/homeList', handler: homeListHandler); // 详情
    router.define('/details/:id', handler: detailHandler); // 详情
    router.define('/cluePage', handler: clueHandler); // 线索页-表单
    router.define('/requestTest', handler: requestTestHandler); // http请求
    router.define('/routeTest', handler: routeTestHandler); // 路由测试
    router.define('/inputTest', handler: inputTestHandler); // input测试
    router.define('/styleTest', handler: styleTestHandler); // 样式测试
  }
}
