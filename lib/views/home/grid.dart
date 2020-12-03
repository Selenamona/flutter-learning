import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeGrid extends StatefulWidget {
  @override
  _HomeGridState createState() => _HomeGridState();
}

class _HomeGridState extends State<HomeGrid> {
  List iconList = [];
  List brandsList = [];

  initState() {
    super.initState();
    init();
  }

  init() async {
    var res = await getJson();
    var brands = await getBrandsJson();
    setState(() {
      iconList = json.decode(res);
      brandsList = json.decode(brands);
    });
  }

  Future<String> getJson() {
    return rootBundle.loadString('mock/grid_data.json');
  }

  Future<String> getBrandsJson() {
    return rootBundle.loadString('mock/brandList.json');
  }

  // 业务类型：二手车、全国购...
  Widget gridBuild() {
    List<Widget> cells = [];
    List<Widget> rowData = [];
    for (var i = 0; i < iconList.length; i++) {
      rowData.add(Container(
          width: 60,
          margin: EdgeInsets.only(bottom: 20),
          child: new Column(children: <Widget>[
            Image.network(iconList[i]['img'],
                width: 30, height: 30, fit: BoxFit.fitWidth),
            Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(iconList[i]['title']))
          ])));
      if (i == 4 || i == 9) {
        cells.add(new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: rowData,
        ));
        rowData = [];
      }
    }
    return new Column(children: cells);
  }

  // 品牌：大众、奔驰...
  Widget carBrands() {
    List<Widget> brands = [];

    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //水平子Widget之间间距
        crossAxisSpacing: 10.0,
        //垂直子Widget之间间距
        mainAxisSpacing: 30.0,
        //一行的Widget数量
        crossAxisCount: 3,
        //子Widget宽高比例
        childAspectRatio: 1.5,
        //子Widget列表
      ),
      children: List.generate(100, (index) {
        return Container(
          color: Color.fromARGB(255, Random().nextInt(256),
              Random().nextInt(256), Random().nextInt(256)),
        );
      }),
    );
    // for (var i = 0; i < brandsList.length; i++) {
    //   brands.add(Row(
    //     children: [
    //       Image.network(
    //         'http:' + brandsList[i]['icon'],
    //         width: 18,
    //       ),
    //       Text(brandsList[i]['name'])
    //     ],
    //   ));
    // }

    // return GridView(
    //   padding: EdgeInsets.zero,
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //       crossAxisCount: 4, childAspectRatio: 2.0 //宽高比为2
    //       ),
    //   // children: brands,
    //   children: List.generate(brandsList.length, (index) {
    //     return Container(
    //         child: Row(
    //       children: [
    //         Image.network(
    //           'http:' + brandsList[index]['icon'],
    //           width: 18,
    //         ),
    //         Text(brandsList[index]['name'])
    //       ],
    //     ));
    //   }),
    // );
    // return new SliverGrid(
    //   gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 4, //Grid按两列显示
    //     mainAxisSpacing: 15, // 主轴方向的间距
    //     crossAxisSpacing: 15, // 横轴方向子元素的间距
    //     childAspectRatio: 3,
    //   ),
    //   delegate: new SliverChildBuilderDelegate(
    //     (BuildContext context, int index) {
    //       return new Container(
    //         alignment: Alignment.topLeft,
    //         child: Row(
    //           children: [
    //             Image.network(
    //               'http:' + brandsList[index]['icon'],
    //               width: 18,
    //             ),
    //             Padding(
    //                 padding: EdgeInsets.only(left: 5),
    //                 child: new Text(brandsList[index]['name']))
    //           ],
    //         ),
    //       );
    //     },
    //     childCount: brandsList.length,
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: gridBuild(),
        ),
        // Container(
        //   height: 200,
        //   child: carBrands(),
        // )
        // Container(
        //   height: 200,
        //   child: CustomScrollView(slivers: <Widget>[carBrands()]),
        // )
        Expanded(child: Container(child: carBrands())),
      ],
    );
  }
}
