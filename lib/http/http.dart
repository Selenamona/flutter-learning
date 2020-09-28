import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:io';
import './apidomain.dart';
import './httpHeaders.dart';

class DioUtil {
  static Dio dio = new Dio();
  // 请求部分
  static Future request(url, {formData}) async {
    try {
      Response response;
      dio.options.headers = httpHeaders;
      if (formData == null) {
        response = await dio.post(serviceUrl + url);
      } else {
        response = await dio.post(serviceUrl + url, data: formData);
      }
      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception("接口异常R");
      }
    } catch (e) {
      print('网络出现错误$e');
    }
  }

  // 拦截器部分
  static tokenInter() {
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) {
      // 请求发送前-预处理
      // print(options);
    }, onResponse: (Response response) {
      // 返回响应数据前-预处理
      return response; // continue
    }, onError: (DioError e) {
      // 请求失败时-预处理
      return e; // continue
    }));
  }
}
