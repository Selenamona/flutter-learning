import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, splashColor: Colors.transparent),
      home: GridViewDemo1(),
    );
  }
}

// SliverGridDelegateWithFixedCrossAxisCount：用于固定列数的场景；
// SliverGridDelegateWithMaxCrossAxisExtent：用于子元素有最大宽度限制的场景；



class HYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("列表测试"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8
            ),
            itemBuilder: (BuildContext ctx, int index) {
              return Container(
                color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
              );
            }
        ),
      ),
    );
  }
}

class GridViewDemo2 extends StatelessWidget {
  const GridViewDemo2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("列表测试"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1.8
        ),
        children: List.generate(100, (index) {
          return Container(
            color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
          );
        }),
      ),
    );
  }
}


class GridViewDemo1 extends StatelessWidget {
  const GridViewDemo1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("列表测试"),
      ),

      body: Column(
        children: [
          Text("ceshi"),
          Expanded(
            child: Container(
              // width: 300,
              // height: 300,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //水平子Widget之间间距
                  crossAxisSpacing: 10.0,
                  //垂直子Widget之间间距
                  mainAxisSpacing: 30.0,
                  //一行的Widget数量
                  crossAxisCount: 3,
                  //子Widget宽高比例
                  childAspectRatio: 1.5,
                  //子Widget列表
                ),
                children: List.generate(100, (index) {
                  return Container(
                    color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}