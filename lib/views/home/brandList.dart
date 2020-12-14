import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// 首页-品牌Grid

class BrandList extends StatefulWidget {
  @override
  _BrandListState createState() => _BrandListState();
}

class _BrandListState extends State<BrandList> {
  List brandsList = [];

  initState() {
    super.initState();
    init();
  }

  init() async {
    var brands = await getBrandsJson();
    var ls = json.decode(brands);
    ls.add({
      "id": 999,
      "name": "更多",
      "clickRank": 999,
      "icon":
          "//img1.yixinfinance.com/taoche/home.m/images/move.html.png?v=20190321"
    });
    setState(() {
      brandsList = ls;
    });
  }

  Future<String> getBrandsJson() {
    return rootBundle.loadString('mock/home/brandList.json');
  }

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 1.0,
            crossAxisSpacing: 50,
            childAspectRatio: 1.4),
        delegate:
            new SliverChildBuilderDelegate((BuildContext context, int index) {
          return Container(
              child: Row(
            children: [
              Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Image.network(
                    'http:' + brandsList[index]['icon'],
                    width: 18,
                  )),
              Text(brandsList[index]['name'])
            ],
          ));
        }, childCount: brandsList.length));
  }
}
