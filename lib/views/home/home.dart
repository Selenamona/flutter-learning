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
      SliverPadding(padding: EdgeInsets.all(15), sliver: HomeSwiper()),
      SliverPadding(padding: EdgeInsets.all(15), sliver: IconGrid()),
      SliverPadding(padding: EdgeInsets.all(15), sliver: BrandList()),
      SliverPadding(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 15), sliver: PriceList()),
      SliverPadding(
          padding: EdgeInsets.all(15),
          sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, // 列数
                mainAxisSpacing: 0, // 主轴间距
                crossAxisSpacing: 0, // 次轴间距
                childAspectRatio: 8, // 子元素的宽高比例
              ),
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return FlatButton(
                  color: Colors.red[600],
                  highlightColor: Colors.red[200],
                  colorBrightness: Brightness.dark,
                  splashColor: Colors.grey,
                  child: Text("查看北京全部3283辆 >", style: TextStyle(fontSize: 16)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)),
                  onPressed: () {},
                );
              }, childCount: 1))),
      SliverPadding(padding: EdgeInsets.all(15), sliver: LongList()),
    ]);
  }
}
