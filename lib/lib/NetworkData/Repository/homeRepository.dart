

import 'package:cis_app/lib/NetworkData/DioServices/homeDio.dart';

class HomeRepository{
 late HomeDio homeDio;
 HomeRepository(this.homeDio);
 Future<List<dynamic>>getAllInHome()async{
   final homeData=await homeDio.getAllInHome();
   return homeData.map((Data) =>   Data.fromJson(Data)).toList();
 }
}