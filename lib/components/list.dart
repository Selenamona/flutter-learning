import 'package:flutter/material.dart';
import 'package:new_flutter/views/detail.dart';
import '../views/detail.dart';

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
    Navigator.of(context).push(new PageRouteBuilder(
        opaque: false,
        pageBuilder: (BuildContext context, _, __) {
          return new Detail(id);
        }));
  }
}
