import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
// import 'package:new_flutter/views/myDemo/detail.dart';

import '../../routers/application.dart';
import '../../service/request_config.dart';

class List extends StatefulWidget {
  @override
  ListState createState() => new ListState();
}

class ListState extends State<List> {
  var userList = [];

  @override
  initState() {
    super.initState();
    init();
  }

  init() async {
    var res = await getJson();
    setState(() {
      userList = json.decode(res);
    });
  }

  Future<String> getJson() {
    return rootBundle.loadString('mock/home/iconList.json');
  }

  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: userList.length,
      itemBuilder: (BuildContext context, int index) {
        return new Card(
          /* 容器，对子组件位置大小进行约束 */
          child: new Container(
            /* 设置边距 */
            padding: new EdgeInsets.only(top: 10.0, bottom: 10),
            child: new ListTile(
              subtitle: new Container(
                  /** 纵向布局 */
                  child: new Row(
                children: [
                  new Image.network(userList[index]["imageUrl"],
                      width: 100.0, height: 100.0, fit: BoxFit.fitHeight),
                  new Container(
                    padding: EdgeInsets.only(left: 20),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        /** 横向布局 */
                        new Row(
                          children: [
                            new Text(userList[index]["promotion_name"],
                                style: new TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0))
                          ],
                        ),
                        new Row(
                          children: [
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                new Text("时间："),
                                new Text("2020-09-24")
                              ],
                            )
                          ],
                        ),
                        new Row(
                          children: <Widget>[
                            new Container(
                              padding: const EdgeInsets.fromLTRB(0, 8, 0, 2),
                              child: new Text(userList[index]['promotion_id']),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )),
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
    // Navigator.of(context).push(new PageRouteBuilder(
    //     opaque: false,
    //     pageBuilder: (BuildContext context, _, __) {
    //       return new Detail(id);
    //     }));
    // 路由跳转方式二（fluro）：
    // Application.router.navigateTo(context, '/details');
    // // *** 传参跳转
    Application.router.navigateTo(context, '/details/001');
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
