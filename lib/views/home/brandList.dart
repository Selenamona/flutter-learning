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
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4),
        delegate:
            new SliverChildBuilderDelegate((BuildContext context, int index) {
          return Container(
              child: Row(
            children: [
              Image.network(
                'http:' + brandsList[index]['icon'],
                width: 18,
              ),
              Text(brandsList[index]['name'])
            ],
          ));
        }, childCount: brandsList.length));
  }
}
