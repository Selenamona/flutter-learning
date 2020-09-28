import 'package:flutter/material.dart';
import 'package:new_flutter/views/detail.dart';
import '../views/detail.dart';
import '../routers//application.dart';

class List extends StatefulWidget {
  @override
  ListState createState() => new ListState();
}

class ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return new Card(
          /* 容器，对子组件位置大小进行约束 */
          child: new Container(
            /* 设置边距 */
            padding: new EdgeInsets.all(10.0),
            child: new ListTile(
              subtitle: new Container(
                /** 纵向布局 */
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    /** 横向布局 */
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        new Text("标题",
                            style: new TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0))
                      ],
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [new Text("时间："), new Text("2020-09-24")],
                        )
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Container(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 2),
                          child: new Text("内容"),
                        )
                      ],
                    )
                  ],
                ),
              ),
              /** 系统ICON */
              trailing: new Icon(
                Icons.keyboard_arrow_right,
                color: Colors.grey,
              ),
              onTap: () => _onTap("2"),
            ),
          ),
        );
      },
    );
  }

  void _onTap(String id) {
    // 路由跳转方式一(flutter 自带)：
    Navigator.of(context).push(new PageRouteBuilder(
        opaque: false,
        pageBuilder: (BuildContext context, _, __) {
          return new Detail(id);
        }));
    // 路由跳转方式二（fluro）：
    // Application.router.navigateTo(context, '/details');
    // // *** 传参跳转
    // Application.router.navigateTo(context, '/details/001');
    // // 替换历史记录_replace: true
    // Application.router.navigateTo(context, '/details/001', replace: true);
    // // 清空历史记录_clearStack: true
    // Application.router.navigateTo(context, '/details/001', clearStack: true);
    // *** 路由跳转都是进栈操作，原有页面没有销毁。如果想跳转时同时销毁页面，可用原生的路由跳转方法：
    // Navigator.of(context).pushAndRemoveUntil(
    //     MaterialPageRoute(builder: (context) => Detail("666")),
    //     (route) => route == null);
  }
}
