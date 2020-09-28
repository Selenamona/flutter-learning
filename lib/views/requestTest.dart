import 'package:flutter/material.dart';
import '../http/http.dart';

class RequestTest extends StatefulWidget {
  @override
  _RequestTestState createState() => _RequestTestState();
}

class _RequestTestState extends State<RequestTest> {
  @override
  String texts = "";

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("省份简称")),
        body: Container(
            child: Column(
          children: [
            GestureDetector(
              onTap: _getProvince,
              child: Text(
                "获取省市",
                style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.red,
                    decorationStyle: TextDecorationStyle.solid), // 添加删除线
              ),
            ),
            Text(
              texts,
              style: TextStyle(decoration: TextDecoration.none), // 去除双下划线
            )
          ],
        )));
  }

  // 网络请求获取省份简称
  void _getProvince() async {
    var response = await DioUtil.request(
        "/clue-center-platform/api/externalClue/getCarIdPrefix");
    var list = response.data['data']['info'];
    print(response.data['data']['info']);
    for (var item in list) {
      setState(() {
        texts += item['dictName'];
      });
    }
  }
}
