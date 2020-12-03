import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HYHomePage(),
    );
  }
}

class HYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("基础Widget"),
      ),
      body: ColumnDemo(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => print("FloatingActionButton Click"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class HYHomeContent extends StatefulWidget {
  @override
  _HYHomeContentState createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  @override
  Widget build(BuildContext context) {
    // Row/Column: 继承自Flex
    // Flex: CSS Flex布局, 直接使用的较少
    // Axis.vertical: Column
    // Axis.horizontal: Row

    /**
     * Row特点:
     *  - 水平方向尽可能占据比较大的空间
     *    * 水平方向也是希望包裹内容, 那么设置mainAxisSize = min
     *  - 垂直方向包裹内容
     * MainAxisAlignment:
     *  - start: 主轴的开始位置挨个摆放元素(默认值)
     *  - end: 主轴的结束位置挨个摆放元素
     *  - center: 主轴的中心点对齐
     *  - spaceBetween: 左右两边的间距为0, 其它元素之间平分间距
     *  - spaceAround: 左右两边的间距是其它元素之间的间距的一半
     *  - spaceEvenly: 所有的间距平分空间
     * CrossAxisAlignment:
     *  - start: 交叉轴的起始位置对齐
     *  - end: 交叉轴的结束位置对齐
     *  - center: 中心点对齐(默认值)
     *  - baseline: 基线对齐(必须有文本的时候才起效果)
     *  - stretch: 先Row占据交叉轴尽可能大的空间, 将所有的子Widget交叉轴的高度, 拉伸到最大
     */
    return RowDemo2();
  }
}

// 3.Expanded
class RowDemo2 extends StatefulWidget {
  const RowDemo2({
    Key key,
  }) : super(key: key);

  @override
  _RowDemo2State createState() => _RowDemo2State();
}

class _RowDemo2State extends State<RowDemo2> {
  bool _isFavor = false;

  @override
  Widget build(BuildContext context) {
    /**
     * Stack默认的大小是包裹内容的
     *  - alignment: 从什么位置开始排布所有的子Widget
     *  - fit: expand 将子元素拉伸到尽可能大
     *  - overflow: 超出部分如何处理
     * Positioned
     */
    return Stack(
      children: <Widget>[
        Image.asset("assets/images/juren.jpeg"),
        // Image.network("https://picsum.photos/500/300"),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            color: Color.fromARGB(150, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "进击的巨人挺不错的",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: _isFavor? Colors.red : Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _isFavor = !_isFavor;
                    });
                  },
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class StackDemo1 extends StatelessWidget {
  const StackDemo1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
//        fit: StackFit.expand,
//      overflow: Overflow.visible,
      children: <Widget>[
        Image.asset(
          "assets/images/juren.jpeg",
          width: 300,
          fit: BoxFit.cover,
        ),
        Positioned(
            left: 20,
            bottom: -50,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.red,
            )),
        Positioned(
            right: 10,
            bottom: 20,
            child: Text(
              "进击的巨人",
              style: TextStyle(fontSize: 20, color: Colors.green),
            ))
      ],
    );
  }
}

class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        textBaseline: TextBaseline.ideographic,
        children: <Widget>[
          /**
           * Flexible中的属性:
           * - flex
           * Expanded(更多) -> Flexible(fit: FlexFit.tight)
           * 空间分配问题
           */
          Expanded(child: Container(height: 60, color: Colors.red)),
          Expanded(
              flex: 2,
              child: Container(width: 1000, height: 100, color: Colors.green)),
          Container(width: 90, height: 80, color: Colors.blue),
          Container(width: 50, height: 120, color: Colors.orange),
        ],
      ),
    );
  }
}

// 2.Column的使用
// Key key,获取组件
    // MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,//子Widget在纵轴上的排列，全部子Widget从顶部开始展示
    // MainAxisAlignment.end//子Widget在纵轴上的排列，全部子Widget挨着底部展示
    // MainAxisAlignment.center//子Widget在纵轴上的排列，全部子widget在中间展示
    // MainAxisAlignment.spaceBetween//子Widget在纵轴上的排列，两两子widget之间间距相等，最上最下子widget挨着边展示
    // MainAxisAlignment.spaceAround//子Widget在纵轴上的排列，两两子widget之间间距相等，最上最下子widget离边的距离为两两子widget之间距离的一半
    // MainAxisAlignment.spaceAround//子Widget在纵轴上的排列，两两子widget之间间距相等，最上最下子widget离边的距离为两两子widget之间距离相等
    // MainAxisSize mainAxisSize = MainAxisSize.max,//设置Column占据的空间为最大
    // CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start,//设置全部子widget左边对齐
    // CrossAxisAlignment.end//设置全部子widget右边对齐
    // CrossAxisAlignment.stretch//设置全部子widget占据整个横轴（X）方向，拉伸对齐Column左右两边
    // CrossAxisAlignment.baseline,//相当于CrossAxisAlignment.start,但是需要配合textBaseline，不然会报错
    // TextDirection textDirection,//设置子widget的左右显示方位，只有在crossAxisAlignment为start、end的时候起作用；
    // VerticalDirection verticalDirection = VerticalDirection.down,//设置子Widget在纵轴（Y）的起始位置，down表示，第一个widget从开始位置展示，后面的跟着依次展示；相当于正序
    // VerticalDirection.up//表示第一个widget从末尾位置开始展示，后面的跟着依次展示，相当于倒序
    // TextBaseline textBaseline,//配合CrossAxisAlignment.baseline一起使用
    // List<Widget> children = const <Widget>[],//装在一组子widgets
class ColumnDemo extends StatelessWidget {
  const ColumnDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      textBaseline: TextBaseline.alphabetic,
      verticalDirection: VerticalDirection.down,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          width: 80,
          height: 60,
          color: Colors.red,
          child: Text(
            "Hellxo",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
          width: 120,
          height: 100,
          color: Colors.green,
          child: Text(
            "Woxrld",
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          width: 90,
          height: 80,
          color: Colors.blue,
          child: Text(
            "abxc",
            style: TextStyle(fontSize: 12),
          ),
        ),
        Container(
          width: 50,
          height: 120,
          color: Colors.orange,
          child: Text(
            "cxba",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ],
    );
  }
}

// 1.基本使用
// Row
// mainAxisAlignment 在flex布局中，子元素应该如何沿着主轴放置,即各个组件的放置的方式， 比如MainAxisAlignment.start 组件都尽量靠近主轴起点
// mainAxisSize 主轴应该占用多少空间 max 即占用最大 min则相反
// crossAxisAlignment 交叉轴的布局方式
// textDirection 组件开始方向 ltr:left-to-right
// verticalDirection 定义了children摆放顺序，默认是down
// textBaseline 对齐文本的水平线
// children 需要的widget们

class RowDemo1 extends StatelessWidget {
  const RowDemo1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        textBaseline: TextBaseline.ideographic,
        children: <Widget>[
          Container(
            width: 80,
            height: 60,
            color: Colors.red,
            child: Text(
              "Hellxo",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            width: 120,
            height: 100,
            color: Colors.green,
            child: Text(
              "Woxrld",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            width: 90,
            height: 80,
            color: Colors.blue,
            child: Text(
              "abxc",
              style: TextStyle(fontSize: 12),
            ),
          ),
          Container(
            width: 50,
            height: 120,
            color: Colors.orange,
            child: Text(
              "cxba",
              style: TextStyle(fontSize: 40),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonRowDemo extends StatelessWidget {
  const ButtonRowDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.red,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[Icon(Icons.bug_report), Text("bug报告")],
      ),
      onPressed: () => print("按钮被点击"),
    );
  }
}
