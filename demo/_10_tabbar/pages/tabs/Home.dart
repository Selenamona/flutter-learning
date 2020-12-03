import 'package:flutter/material.dart';

import 'package:scroll_to_index/scroll_to_index.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter"),),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                child: Text("跳转到appBar"),
                onPressed: () {
                  //路由跳转
                  Navigator.pushNamed(context, '/appBarDemo');

            }),
            SizedBox(width: 10),
            RaisedButton(
                child: Text("TabController定义顶部tab切换 "),
                onPressed: () {
                  //路由跳转
                  Navigator.pushNamed(context, '/tabBarController');

            })
          ],
        ),
      ),
    );
  }
}
