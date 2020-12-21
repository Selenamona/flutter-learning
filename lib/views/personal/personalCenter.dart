import 'package:flutter/material.dart';

class PersonalCenter extends StatefulWidget {
  @override
  _PersonalCenterState createState() => _PersonalCenterState();
}

class _PersonalCenterState extends State<PersonalCenter> {
  List myData = [
    {'num': '7', 'text': '我收藏的'},
    {'num': '2', 'text': '我咨询的'},
    {'num': '4', 'text': '我看过的'},
    {'num': '9', 'text': '我订阅的'},
  ];

  List listData = [
    {'icon': '', 'text': '我的订单', 'top': -1},
    {'icon': '', 'text': '我的卡劵', 'top': 0.5},
    {'icon': '', 'text': '我的收入', 'top': 1.0}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 44,
          elevation: 1, // 默认是4， 设置成0 就是没有阴影了
          centerTitle: true,
          title: Text(
            '我的',
            style: TextStyle(
                fontSize: 16,
                color: Color(0xFF4E4E4E),
                fontWeight: FontWeight.w600),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 25),
                        child: Image.asset(
                          'images/personal/person-02.png',
                          width: 70,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "点击登录",
                            style: TextStyle(fontSize: 20),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 7),
                            child: Text(
                              "爱车精准推荐永不错过～",
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      )
                    ],
                  )),
              Container(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                  color: Colors.white,
                  height: 80,
                  child: GridView.count(
                    crossAxisCount: 4, // 交叉轴方向上个数
                    crossAxisSpacing: 36, // 交叉轴方向上之间的间隔。
                    children: List.generate(4, (i) {
                      return Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Text(
                                myData[i]['num'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )),
                          Text(myData[i]['text'],
                              style: TextStyle(color: Color(0xFF4B4A4A)))
                        ],
                      );
                    }),
                  )),
              Container(
                height: 140,
                margin: EdgeInsets.only(bottom: 15),
                color: Colors.white,
                child: ListView.builder(
                  itemCount: 3,
                  itemExtent: 40,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Image.asset('images/personal/my_icon.png',
                          width: 20,
                          height: 20,
                          fit: BoxFit.fitWidth,
                          repeat: ImageRepeat.noRepeat,
                          alignment: Alignment(0, index * 0.5)),
                      title: Text(listData[index]['text']),
                      trailing: new Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                      ),
                    );
                  },
                ),
              ),
              Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                          title: Text(
                        "常用功能",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        height: 80,
                        child: GridView.count(
                            crossAxisCount: 4, // 交叉轴方向上个数
                            crossAxisSpacing: 36, // 交叉轴方向上之间的间隔。
                            children: List.generate(4, (i) {
                              return Column(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 8),
                                      child: Text(
                                        myData[i]['num'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      )),
                                  Text(myData[i]['text'],
                                      style:
                                          TextStyle(color: Color(0xFF4B4A4A)))
                                ],
                              );
                            })),
                      )
                    ],
                  )),
              Container(
                height: 140,
                margin: EdgeInsets.only(top: 15),
                color: Colors.white,
                child: ListView.builder(
                  itemCount: 3,
                  itemExtent: 40,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Image.asset('images/personal/my_icon.png',
                          width: 20,
                          height: 20,
                          fit: BoxFit.fitWidth,
                          repeat: ImageRepeat.noRepeat,
                          alignment: Alignment(0, index * -0.5)),
                      title: Text(listData[index]['text']),
                      trailing: new Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
