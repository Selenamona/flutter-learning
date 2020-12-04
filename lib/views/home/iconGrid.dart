import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

/// 首页-Icon Grid

class IconGrid extends StatefulWidget {
  @override
  _IconGridState createState() => _IconGridState();
}

class _IconGridState extends State<IconGrid> {
  List iconList = [];

  initState() {
    super.initState();
    init();
  }

  init() async {
    var res = await getJson();
    setState(() {
      iconList = json.decode(res);
    });
  }

  Future<String> getJson() {
    return rootBundle.loadString('mock/home/grid_data.json');
  }

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5, // 列数
          mainAxisSpacing: 10.0, // 主轴间距
          crossAxisSpacing: 18, // 次轴间距
          childAspectRatio: 1.2, // 子元素的宽高比例
        ),
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return Column(children: <Widget>[
            Image.network(iconList[index]['img'],
                width: 30, height: 30, fit: BoxFit.fitWidth),
            Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(iconList[index]['title']))
          ]);
        }, childCount: iconList.length));
  }
}
