import 'dart:convert';

import 'package:flutter/material.dart';
import '../../service/request_config.dart';
import '../../api/api.dart';

class RequestTest extends StatefulWidget {
  @override
  _RequestTestState createState() => _RequestTestState();
}

class _RequestTestState extends State<RequestTest> {
  @override
  String texts = "";

  // Future fetchPost() async {
  //   var res = await DioUtil.post(Api.getProvincePrefix);
  //   var traceId = res;
  // }

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("省份简称")),
        body: FutureBuilder(
            // future: fetchPost(),
            future: DefaultAssetBundle.of(context)
                .loadString('mock/provincePrefix.json'),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              var mydata = json.decode(snapshot.data.toString());
              print(mydata["data"]["info"]); // 获取的list
              return Container(
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
              ));
            }));
  }

  // 网络请求获取省份简称
  void _getProvince() async {
    var response = await DioUtil.post(Api.getProvincePrefix);
    var list = response.data['data']['info'];
    print(response.data['data']['info']);
    for (var item in list) {
      setState(() {
        texts += item['dictName'];
      });
    }
  }
}
