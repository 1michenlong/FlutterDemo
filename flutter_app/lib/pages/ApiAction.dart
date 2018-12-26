import 'dart:convert';
import 'dart:io';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_app/pages/ApiManage.dart';

class ApiAction {
  var httpClient = new HttpClient();

  static void get(String url,Function callBack,{Map<String,String> params,Function errorCallBack})async {
    if(params!=null){
      params["type"] = "shehui";
      params["key"] = "3a86f36bd3ecac8a51135ded5eebe862";

//      params["timestamp"]=DateTime.now().toIso8601String();

      StringBuffer sb = new StringBuffer("?");
      params.forEach((key, value) {
        sb.write("$key" + "=" + "$value" + "&");
      });

      String paramStr = sb.toString();
      paramStr = paramStr.substring(0, paramStr.length - 1);
      url = ApiManage.baseUrl+url;
      url += paramStr;
      print("paramStr=="+url);

      try {
        http.Response res = await http.get(url);
        if (callBack != null) {
          print("res.body=="+(res.body));
          callBack(res.body);
        }
      } catch (exception) {
        if (errorCallBack != null) {
          print("exception=="+(exception));
          errorCallBack(exception);
        }
      }
    }
  }

  static Future<List> HYget() async {
    var httpClient = new HttpClient();
    var request = await httpClient.getUrl(Uri.parse("http://www.wanandroid.com/project/list/1/json?cid=1"));
    var response = await request.close();
    if(response.statusCode==200){
      var  responseBody = await response.transform(utf8.decoder).join();
      var convertDataToJson = json.decode(responseBody)["data"]["datas"];
      return convertDataToJson;
    }
//    http.Response response=await http.get("http://www.wanandroid.com/project/list/1/json?cid=1");
//    var convertDataToJson = json.decode(response.body)["data"]["datas"];
//    print(convertDataToJson);
//    return convertDataToJson;
  }
//  static String HYget(String url,Map<String, String> params,)async{
//    try {
//      var httpClient = new HttpClient();
//      var request = await httpClient.getUrl(Uri.parse(url));
//      var response = await request.close();
//      if(response.statusCode==200){
//          var  responseBody = await response.transform(utf8.decoder).join();
//          var jsonResult = json.decode(responseBody);
//          return jsonResult.toString();
//      }else{
//        throw("error code=="+response.statusCode.toString());
//      }
//    } catch (e) {
//        throw e;
//    }
//  }

  static void post(Function callback,
      {Map<String, String> params, Function errorCallback}) async {
    try {
      http.Response res = await http.post(ApiManage.baseUrl, body: params);

      if (callback != null) {
        print("res.body==" + (res.body));
        callback(res.body);
      }else{
        print("res.body==null");
      }
    } catch (e) {
      if (errorCallback != null) {
        errorCallback(e);
      }
    }
  }

  static Future<String> post2(Map<String, String> params) async {
    http.Response res = await http.post(ApiManage.baseUrl, body: params);
    print("res.body==" + (res.body));
    return res.body;
  }

  static void yMpost(String url, Function callback,
      {Map<String, String> params, Function errorCallback}) async {
    if (params != null) {
      params["apiVersion"] = "2.7";
      params["appVersion"] = "3.12.55.111";
      params["timestamp"] = "20181225154149";
      params["token"] = "50d566c564d598ad8a4f48f04b1a57cf";

      StringBuffer sb = new StringBuffer();
      params.forEach((key, value) {
        sb.write("$key" + "=" + "$value" + "&");
      });

      String paramStr = sb.toString();
      paramStr = paramStr.substring(0, paramStr.length - 1);

      params["sign"] = getMD5Str(paramStr);

      url = ApiManage.baseUrl + url;

      StringBuffer sb2 = new StringBuffer();
      params.forEach((key, value) {
        sb2.write("$key" + "=" + "$value" + "&");
      });

      String paramStr2 = sb2.toString();
      paramStr2 = paramStr2.substring(0, paramStr2.length - 1);

      print("url==" + url+"?"+paramStr2);

      try {
        http.Response res = await http.post(url, body: params);

        if (callback != null) {
          print("res.body==" + (res.body));
          callback(res.body);
        }
      } catch (e) {
        if (errorCallback != null) {
          print("errorCallback==" + (errorCallback.toString()));
          errorCallback(e);
        }
      }
    }
  }
}

class HttpController {
  static void get(String url, Function callback,
      {Map<String, String> params, Function errorCallback}) async {
    if (params != null && params.isNotEmpty) {
      StringBuffer sb = new StringBuffer("?");
      params.forEach((key, value) {
        sb.write("$key" + "=" + "$value" + "&");
      });
      String paramStr = sb.toString();
      paramStr = paramStr.substring(0, paramStr.length - 1);
      url += paramStr;
    }
    try {
      http.Response res = await http.get(url);
      if (callback != null) {
        print("res.body==" + (res.body));
        callback(res.body);
      }
    } catch (exception) {
      if (errorCallback != null) {
        print("errorCallback==" + (errorCallback.toString()));
        errorCallback(exception);
      }
    }
  }

  static void post(String url, Function callback,
      {Map<String, String> params, Function errorCallback}) async {
    try {
      http.Response res = await http.post(url, body: params);

      if (callback != null) {
        print("res.body==" + (res.body));
        callback(res.body);
      }else{
        print("res.body==null");
      }
    } catch (e) {
      if (errorCallback != null) {
        errorCallback(e);
      }
    }
  }
}

/**
 * 获取MD5加密字符
 */
String getMD5Str(String str) {
  var content = new Utf8Encoder().convert(str);
  var digest = md5.convert(content);
  return hex.encode(digest.bytes);
}
