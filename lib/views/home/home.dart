import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            new ClipRRect(
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
                    loop: false, // 无限轮播， 默认true
                    index: 1, // 初始的时候下标位置，默认0
                    onTap: (index) => print('点击了第$index个'), // 当用户点击某个轮播的时候调用
                    onIndexChanged: (index) => {}, // 当用户手动拖拽或者自动播放引起下标改变的时候调用
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget _swiperBuilder(BuildContext context, int index) {
    List imgList = [
      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1604900538081&di=74fbe68650155808ba7daaee3d918955&imgtype=0&src=http%3A%2F%2Fimg1.imgtn.bdimg.com%2Fit%2Fu%3D120445286%2C4097884543%26fm%3D214%26gp%3D0.jpg",
      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1604900816907&di=16f014c260887e962e666eaceded1b65&imgtype=0&src=http%3A%2F%2F01.minipic.eastday.com%2F20170313%2F20170313141354_75937e17c42789fc21329c0083832196_9.jpeg",
      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1604901929109&di=04cb9133c2ca92de6a2a0a38c127e57d&imgtype=0&src=http%3A%2F%2Fwww.haihangedu.com%2Fuploads%2F190902%2F4-1ZZ2151910412.jpg",
      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1604901964066&di=39f3741cf28698050b6221842a43a38a&imgtype=0&src=http%3A%2F%2Fwww.bizhidaquan.com%2Fd%2Ffile%2Fdongwu%2Fgou%2F2015-01-19%2F4899cccf2b9be9eac09f6ea7f5025bc4.jpg",
    ];
    return (Image.network(
      imgList[index],
      fit: BoxFit.fill,
    ));
  }
}
