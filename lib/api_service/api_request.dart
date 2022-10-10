// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
//
// class ApiRequest {
//   final String url;
//   final Map? data;
//
//   ApiRequest({required this.url, this.data});
//
//   Dio dio(){
//     return Dio(BaseOptions(headers: {
//       // Api Header and Key
//       'Authorization' : 'B......',
//     }));
//   }
//
//   void get({
//     Function()? beforeSend,
//     Function(dynamic data)? onSuccess,
//     Function(dynamic error)? onError,
// }){
//     dio().get(url, queryParameters: data).then((res){
//     if (onSuccess != null) onSuccess(res.data);
//     }).catchError((error){
//       if(onError != null) onError(error);
//     });
//   }
// }
