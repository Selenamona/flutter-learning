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

  // 业务类型：二手车、全国购...
  // Widget gridBuild() {
  //   List<Widget> cells = [];
  //   List<Widget> rowData = [];
  //   for (var i = 0; i < iconList.length; i++) {
  //     rowData.add(Container(
  //         width: 60,
  //         margin: EdgeInsets.only(bottom: 20),
  //         child: new Column(children: <Widget>[
  //           Image.network(iconList[i]['img'],
  //               width: 30, height: 30, fit: BoxFit.fitWidth),
  //           Padding(
  //               padding: EdgeInsets.only(top: 5),
  //               child: Text(iconList[i]['title']))
  //         ])));
  //     if (i == 4 || i == 9) {
  //       cells.add(new Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: rowData,
  //       ));
  //       rowData = [];
  //     }
  //   }
  //   return new Column(children: cells);
  // }

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
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
