import 'package:flutter/material.dart';
import './input.dart';

class Second extends StatefulWidget {
  @override
  SecondState createState() => new SecondState();
}

class SecondState extends State<Second> {
  TextEditingController controller;
  String active = 'test';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        /** 顶部导航栏 */
        appBar: new AppBar(
          title: new Text("界面2"),
        ),
        body: new Container(
          child: new Column(
            children: [
              new TextField(
                controller: controller,
                onChanged: _onChanged,
              ),
              new Input(active: active)
            ],
          ),
        ));
  }

  void _onChanged(String value) {
    setState(() {
      active = value;
    });
  }
}
