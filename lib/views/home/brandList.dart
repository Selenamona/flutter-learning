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
    setState(() {
      brandsList = json.decode(brands);
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
              Image.network(
                'http:' + brandsList[index]['icon'],
                width: 18,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(brandsList[index]['name']))
            ],
          ));
        }, childCount: brandsList.length));
  }
}
