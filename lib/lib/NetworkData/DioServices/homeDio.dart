
import 'package:cis_app/lib/constants.dart';
import 'package:dio/dio.dart';

class HomeDio{
  late Dio dio;
  HomeDio(){
    BaseOptions options=BaseOptions(
      baseUrl:BaseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 30*1000,
      receiveTimeout: 30*1000
    );
    dio=Dio(options);

  }

  Future<List<dynamic>>getAllInHome()async{
    Response response=await dio.get("/categories");
    return response.data;
    
  }

}