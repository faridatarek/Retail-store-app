import 'package:dio/dio.dart';

class DioHelper{
  static late Dio _dio;
  static init(){
    _dio=Dio(BaseOptions(
      baseUrl: "http://grocery-apid.herokuapp.com/api",
      receiveDataWhenStatusError: true,
      connectTimeout: 36000,
      receiveTimeout: 36000,

    ));
  }
  static Future<Response>postData({
    required String url,
    String? token,
    dynamic query,
    dynamic body,
  })async{
    if(token!=null){
      _dio.options.headers= {"Authorization":"Bearer $token"};
    }
    return await _dio.post(url,data: body,queryParameters: query);
  }
  static Future<Response>getData({
    required String url,
    String?token,
    dynamic query,
    dynamic body,
  })async{
    if(token!=null){
      _dio.options.headers= {"Authorization":"Bearer $token"};
    }
    return await _dio.get(url,queryParameters: query);
  }


}