import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

/// 首页-轮播图

class HomeSwiper extends StatefulWidget {
  @override
  _HomeSwiperState createState() => _HomeSwiperState();
}

class _HomeSwiperState extends State<HomeSwiper> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        //返回组件集合
        List.generate(1, (int index) {
          //返回 组件
          return Container(
            child: new ClipRRect(
                borderRadius: BorderRadius.circular(5), // 自定义圆角
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150.0,
                  child: Swiper(
                    itemBuilder: _swiperBuilder,
                    itemCount: 4,
                    // 1、设置 new SwiperPagination() 展示默认分页指示器（展示当前图片下标）
                    // pagination: new SwiperPagination(
                    //     alignment: Alignment
                    //         .bottomCenter, // 位置，默认Alignment.bottomCenter
                    //     margin: const EdgeInsets.all(
                    //         20), // 分页指示器与容器边框的距离,默认 分页指示器与容器边框的距离const EdgeInsets.all(10.0)
                    //     builder: DotSwiperPaginationBuilder(
                    //       color: Colors.black54,
                    //       activeColor: Colors.white,
                    //     )
                    //     // builder: FractionPaginationBuilder()
                    //     ),
                    // 2、自定义分页器
                    // pagination: new SwiperCustomPagination(
                    //     builder: (BuildContext context, SwiperPluginConfig config) {
                    //   return new YourOwnPaginatipon();
                    // }),
                    // 3、设置 new SwiperControl() 展示控制按钮（左右箭头）
                    // control: new SwiperControl(
                    //     iconPrevious:
                    //         Icons.ac_unit, // 上一页icon,默认Icons.arrow_back_ios
                    //     iconNext: Icons
                    //         .arrow_forward_ios, // 下一页icon,默认Icons.arrow_forward_ios
                    //     color: Color.fromRGBO(200, 100, 600,
                    //         .5), // 按钮颜色, 默认Theme.of(context).primaryColor
                    //     size: 20, // 按钮的大小默认30
                    //     padding: const EdgeInsets.all(5.0) // 按钮与容器的距离
                    //     ),
                    duration: 500, // 动画时间，单位是毫秒,默认300
                    scrollDirection:
                        Axis.horizontal, // 滚动方向，默认horizontal，垂直滚动:Axis.vertical
                    autoplay: true, // 自动播放，默认false
                    autoplayDelay: 2000, // 自动播放延迟毫秒数,默认3000
                    autoplayDisableOnInteraction:
                        true, // 当用户拖拽的时候，是否停止自动播放,默认true
                    loop: true, // 无限轮播， 默认true
                    index: 1, // 初始的时候下标位置，默认0
                    onTap: (index) => print('点击了第$index个'), // 当用户点击某个轮播的时候调用
                    onIndexChanged: (index) => {}, // 当用户手动拖拽或者自动播放引起下标改变的时候调用
                  ),
                )),
          );
        }),
      ),
    );
  }

  Widget _swiperBuilder(BuildContext context, int index) {
    List imgList = [
      "https://img2.yixinfinance.com/taoche/maiche/zhimai/images/new-zm-banner.html.49b80f.png",
      "http://img1.yixinfinance.com/chedai/ece175b0-2a95-4822-b299-ebd81e862502.png",
      "https://dd.yiche.com/inner-dsp-public/84c72d1dcc63f4a605d21133b631419b.jpg",
      "https://d2.yiche.com/zmaterial/img/1565323589971.jpg",
    ];
    return (Image.network(
      imgList[index],
      fit: BoxFit.cover,
    ));
  }
}
