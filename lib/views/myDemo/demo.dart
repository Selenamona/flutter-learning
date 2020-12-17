import 'package:flutter/material.dart';
import 'package:new_flutter/routers/application.dart';

class MyDemo extends StatefulWidget {
  @override
  _MyDemoState createState() => _MyDemoState();
}

class _MyDemoState extends State<MyDemo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RaisedButton(
          child: Text("路由测试"),
          onPressed: () {
            Application.router.navigateTo(context, '/routeTest');
          },
        ),
      ],
    );
  }
}
