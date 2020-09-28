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
    return Container(
        child: Column(
      children: [
        GestureDetector(
          onTap: _getProvince,
          child: Text("获取省市"),
        ),
        Text(texts)
      ],
    ));
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
