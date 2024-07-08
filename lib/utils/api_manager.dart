import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class APIManager {
  String token = "";
  late Dio dio;
  late Dio tokenDio;
  String url="https://api.habbiton.com/v1/";

  APIManager() {


   //user.token!;

    BaseOptions options = BaseOptions(
      baseUrl:url,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
    );

    dio = Dio(options);
    tokenDio = Dio(options);

    log("url4 : ${options.baseUrl}");
  }

  Map<String, dynamic> getHeaders(bool tokenRequired) {
    if (tokenRequired) {
      //token = Helper.staticToken;
      var tokenHeader = {
        HttpHeaders.contentTypeHeader: "application/json",
        'Authorization': '$token'
      };
      return tokenHeader;
    } else {
      return {HttpHeaders.contentTypeHeader: "application/json"};
    }
  }

  Future<dynamic> get(String endPoint, dynamic params,
      {bool requireToken = true}) async {
    try {
      Response response = await dio.get(
        "",
        // options: Options(
        //   headers: getHeaders(requireToken),
        // ),
        queryParameters: params,
      );
      return response.data;
    } on DioException catch (err) {

      if(err.response?.statusCode ==500){
        APIManager();
        log(err.toString());
      }else if(err.response?.statusCode==400){
        APIManager();
      }else if(err.response?.statusCode==505){
        APIManager();
      }
      return err;
    }
  }

  Future<dynamic> post(String endPoint, dynamic params,
      {bool requireToken = true}) async {

    BaseOptions options = BaseOptions(
      baseUrl: url,
      headers: getHeaders(true),
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
    );

    dio = Dio(options);
    tokenDio = Dio(options);


    try {
      Response response = await dio.post(
        endPoint,
        /*  options: Options(
          headers: getHeaders(requireToken),
        ), */
        data: params,
      );
      log(response.toString());
      return response.data;
    } on DioException catch (err) {
      if(err.response?.statusCode ==500){
        APIManager();
        log(err.toString());
      }else if(err.response?.statusCode==400){
        APIManager();
      }else if(err.response?.statusCode==505) {
        APIManager();
      }
      return err.response;
    }
  }

}
