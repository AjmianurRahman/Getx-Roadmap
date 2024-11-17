import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:getx_roadmap/MVVM/data/app_exceptions.dart';
import 'package:getx_roadmap/MVVM/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {

  //! THIS IS THE GET API
  @override
  Future<dynamic> getApi(String url) async {

    if(kDebugMode){
      print(url);
    }

    dynamic responseJson;

    try {
      final response =
          http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response as http.Response);

    } on SocketException {
      //? use SocketException for no internet exception
      throw InternetException();
    } on RequestTimeOut {
      throw RequestTimeOut();
    }

    return responseJson;
  }

  //! THIS IS THE POST API
  @override
  Future<dynamic> postApi(String url, dynamic data) async {
    dynamic responseJson;

    try {
      final response =
          http.post(Uri.parse(url), body: jsonEncode(data));
      responseJson = returnResponse(response as http.Response);

    } on SocketException {
      //? use SocketException for no internet exception
      throw InternetException();
    } on RequestTimeOut {
      throw RequestTimeOut();
    }

    return responseJson;
  }




  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw InvalidUrl();
      default:
        throw FetchDataException('${response.statusCode.toString()}: Error accorded while communicating with server');
    }
  }

}
