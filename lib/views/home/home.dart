import 'package:flutter/material.dart';
import './swiper.dart';
import './iconGrid.dart';
import './listView.dart';
import './priceList.dart';
import './brandList.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverPadding(padding: EdgeInsets.all(5), sliver: HomeSwiper()),
      SliverPadding(padding: EdgeInsets.all(5), sliver: IconGrid()),
      SliverPadding(padding: EdgeInsets.all(5), sliver: BrandList()),
      SliverPadding(padding: EdgeInsets.all(5), sliver: PriceList()),
      SliverPadding(padding: EdgeInsets.all(5), sliver: LongList()),
    ]);
  }
}
