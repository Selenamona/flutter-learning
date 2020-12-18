import 'package:flutter/material.dart';

class Clue extends StatefulWidget {
  @override
  _ClueState createState() => _ClueState();
}

class _ClueState extends State<Clue> {
  final TextEditingController _controller = new TextEditingController();
  @override
  // 循环渲染组件
  // List formList;
  // void initState() {
  //   super.initState();
  //   formList = [
  //     {"icon": Icon(Icons.alarm), "title": '车牌号'},
  //     {"icon": Icon(Icons.album), "title": '所有人'},
  //     {"icon": Icon(Icons.archive), "title": '号牌颜色'},
  //   ];
  // }

  Widget build(BuildContext context) {
    // List<Widget> cells = []; // 存放循环生成的widget
    // for (var item in formList) {
    //   cells.add(new Row(children: <Widget>[
    //     item['icon'],
    //     new Text(item['title']),
    //     // TextField(
    //     //   controller: controller,
    //     //   decoration: InputDecoration(
    //     //     labelText: "用户名",
    //     //   ),
    //     // )
    //   ]));
    // }
    return Material(
        child: Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("images/bg1.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              child: new Column(
                children: <Widget>[
                  /** Expanded 最大限度填充父控件 */
                  // new Expanded(
                  //     child: new TextField(
                  //   controller: _controller,
                  //   decoration: new InputDecoration(
                  //       labelText: "用户名",
                  //       hintText: '请输入',
                  //       icon: Icon(Icons.person)),
                  // )),
                  new TextField(
                    controller: _controller,
                    decoration: new InputDecoration(
                        labelText: "姓名",
                        hintText: '请输入',
                        icon: Icon(Icons.person)),
                  ),
                  new TextField(
                    controller: _controller,
                    decoration: new InputDecoration(
                        labelText: "手机号",
                        hintText: '请输入',
                        icon: Icon(Icons.cached)),
                  ),
                  new TextField(
                    controller: _controller,
                    decoration: new InputDecoration(
                        labelText: "昵称",
                        hintText: '请输入',
                        icon: Icon(Icons.palette)),
                  )
                ],
              ),
              margin: EdgeInsets.all(30), padding: EdgeInsets.all(20),
              /** decoration 和 color 不能同时使用 */
              // color: Colors.white,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  /** 背景径向渐变 */
                  gradient: RadialGradient(
                      colors: [Colors.white, Colors.white],
                      center: Alignment.topLeft,
                      radius: .98),
                  /** 设置阴影 */
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFF8FECFF),
                        offset: Offset(0, -6), // 阴影xy轴偏移量
                        blurRadius: 0, // 阴影模糊程度
                        spreadRadius: -2 // 阴影扩散程度
                        ),
                    BoxShadow(
                        color: Color(0xA9FF00B3),
                        offset: Offset(0, 8), // 阴影xy轴偏移量
                        blurRadius: 0, // 阴影模糊程度
                        spreadRadius: -2 // 阴影扩散程度
                        )
                  ]),
            )));
  }
}
