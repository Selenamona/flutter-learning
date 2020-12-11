import 'package:flutter/material.dart';

import './brandList.dart';
import './iconGrid.dart';
import './imgBlock.dart';
import './listView.dart';
import './priceList.dart';
import './swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      /** 轮播图 */
      SliverPadding(padding: EdgeInsets.all(15), sliver: HomeSwiper()),

      /** icon */
      SliverPadding(padding: EdgeInsets.all(15), sliver: IconGrid()),

      /** 品牌 */
      SliverPadding(padding: EdgeInsets.all(15), sliver: BrandList()),

      /** 价钱分类 */
      SliverPadding(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 15), sliver: PriceList()),

      /** 中间区域 */
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // 设置子控件的宽度
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
              height: 56,
              child: RaisedButton(
                color: Colors.red[600],
                highlightColor: Colors.red[200],
                colorBrightness: Brightness.dark,
                splashColor: Colors.grey,
                child: Text("查看北京全部3283辆 >", style: TextStyle(fontSize: 16)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0)),
                onPressed: () {},
              ),
            ),
            // ImgBlock()
          ],
        ),
      ),

      /** 长列表 */
      SliverPadding(padding: EdgeInsets.all(15), sliver: LongList()),
    ]);
  }
}
