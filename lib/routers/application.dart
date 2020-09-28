import 'package:fluro/fluro.dart';

// 路由静态化处理：创建了一个 Application 对象，并设置了一个静态属性 router。
// 全局注入路由时，会把调用 Router() 方法得到的路由对象保存在 Application.router 属性中。
// 这样，在后续各个页面中使用路由时，就可以直接通过 Application.router 来拿到路由对象，
// 而不需要反复调用 Router() 方法了。

class Application {
  static Router router;
}
