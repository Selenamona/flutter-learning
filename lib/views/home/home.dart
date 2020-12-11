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
              padding: EdgeInsets.fromLTRB(15, 5, 15, 30),
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
            Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 110,
                    margin: EdgeInsets.fromLTRB(15, 5, 5, 30),
                    child: Column(
                      children: [
                        Text(
                          "越野SUV",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        Text("高底盘 大空间",
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey[600]))
                      ],
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            // image: AssetImage('assets/blockBg/bg1.png'),
                            image: AssetImage('images/blockBg/bg1.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      height: 110,
                      margin: EdgeInsets.fromLTRB(5, 5, 15, 30),
                      child: Column(
                        children: [
                          Text(
                            "准新车",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          Text("质优价低",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey[600]))
                        ],
                      ),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/blockBg/bg2.png'),
                              fit: BoxFit.cover)),
                    )),
              ],
            ),
            ImgBlock()
          ],
        ),
      ),

      /** 长列表 */
      SliverPadding(padding: EdgeInsets.all(15), sliver: LongList()),
    ]);
  }
}
