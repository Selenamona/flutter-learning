import 'package:dio/dio.dart';
import 'dart:async';
import '../api/api.dart';

var serviceUrl = Api.baseUrl;

const httpHeaders = {
  'Accept': 'application/json, text/plain, */*',
  'Authorization': '666',
  'Content-Type': 'application/json;charset=UTF-8',
  'Origin': 'http://localhost:8080',
  'Referer': 'http://localhost:8080/',
  'User-Agent':
      'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',
};

class DioUtil {
  static Dio dio = new Dio();
  // POST 请求
  static Future post(url, {formData}) async {
    try {
      Response response;
      dio.options.headers = httpHeaders;
      print(serviceUrl + url);
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

  // GET 请求
  static Future get(url, {formData}) async {
    try {
      Response response;
      dio.options.headers = httpHeaders;
      print(serviceUrl + url);
      response = await dio.get(serviceUrl + url);
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
