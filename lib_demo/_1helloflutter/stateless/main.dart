import 'package:flutter/material.dart';


main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // build
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: HYContentBody())
    );
  }
}

// 这个代码是有问题的
class HYContentBody extends StatelessWidget {
  // 错误的代码
   final flag = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Checkbox(
            value: flag,
            onChanged: (value) {

            }
          ),
          Text("同意协议", style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}