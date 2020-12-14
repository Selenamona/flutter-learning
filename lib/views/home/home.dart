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
              height: 76,
              child: RaisedButton(
                color: Color(0xFFeb0c1d),
                highlightColor: Colors.red[200],
                colorBrightness: Brightness.dark,
                splashColor: Colors.grey,
                child: Text("查看北京全部3283辆 >", style: TextStyle(fontSize: 14)),
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
                    margin: EdgeInsets.fromLTRB(15, 5, 5, 10),
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "越野SUV",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Text("高底盘 大空间",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.grey[600]))),
                        Container(
                            margin: EdgeInsets.only(top: 2),
                            alignment: Alignment.bottomRight,
                            child: Image.asset("images/blockBg/car1.png",
                                height: 50))
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular((5.0)),
                        image: DecorationImage(
                            image: AssetImage('images/blockBg/bg1.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      height: 110,
                      margin: EdgeInsets.fromLTRB(5, 5, 15, 10),
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "准新车",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 2),
                              child: Text("质优价低",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey[600]))),
                          Container(
                              margin: EdgeInsets.only(top: 2),
                              alignment: Alignment.bottomRight,
                              child: Image.asset("images/blockBg/car2.png",
                                  height: 50))
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular((5.0)),
                          image: DecorationImage(
                              image: AssetImage('images/blockBg/bg2.png'),
                              fit: BoxFit.cover)),
                    )),
              ],
            ),
            Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      height: 120,
                      margin: EdgeInsets.fromLTRB(15, 5, 1.5, 30),
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "城市代步",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 2),
                              child: Text("省心省力",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey[600]))),
                          Container(
                              margin: EdgeInsets.only(top: 2),
                              alignment: Alignment.bottomRight,
                              child: Image.asset("images/blockBg/car3.png",
                                  height: 55))
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular((5.0)),
                          image: DecorationImage(
                              image: AssetImage('images/blockBg/bg3.png'),
                              fit: BoxFit.cover)),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      height: 120,
                      margin: EdgeInsets.fromLTRB(8, 5, 8, 30),
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "超低月租",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 2),
                              child: Text("千元月租 无压力",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey[600]))),
                          Container(
                              margin: EdgeInsets.only(top: 2),
                              alignment: Alignment.bottomRight,
                              child: Image.asset("images/blockBg/car4.png",
                                  height: 55))
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular((5.0)),
                          image: DecorationImage(
                              image: AssetImage('images/blockBg/bg4.png'),
                              fit: BoxFit.cover)),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      height: 120,
                      margin: EdgeInsets.fromLTRB(1.5, 5, 15, 30),
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "品牌专区",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 2),
                              child: Text("厂商认证",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey[600]))),
                          Container(
                              margin: EdgeInsets.only(top: 2),
                              alignment: Alignment.bottomRight,
                              child: Image.asset("images/blockBg/car5.png",
                                  height: 55))
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular((5.0)),
                          image: DecorationImage(
                              image: AssetImage('images/blockBg/bg5.png'),
                              fit: BoxFit.cover)),
                    ))
              ],
            ),
            Container(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "淘车二手车",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            ImgBlock(),
            Container(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "淘车心选",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),

      /** 长列表 */
      SliverPadding(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 15), sliver: LongList()),
    ]);
  }
}
