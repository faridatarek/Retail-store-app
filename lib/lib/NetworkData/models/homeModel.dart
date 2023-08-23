class HomeModel {
 late int id;
 late String name;
 late String image;
 HomeModel.fromJson(Map<String,dynamic>json){
  id=json["id"];
  name=json["name"];
  image=json["image"];
 }
}
/*
class HomeModel {
 HomeModel({
  required this.data,
 });
 late final List<Data> data;

 HomeModel.fromJson(Map<String, dynamic> json){
  data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
 }

 Map<String, dynamic> toJson() {
  final _data = <String, dynamic>{};
  _data['data'] = data.map((e)=>e.toJson()).toList();
  return _data;
 }
}

class Data {
 Data({
  required this.id,
  required this.name,
  required this.image,
 });
 late final int id;
 late final String name;
 late final String image;

 Data.fromJson(Map<String, dynamic> json){
  id = json['id'];
  name = json['name'];
  image = json['image'];
 }

 Map<String, dynamic> toJson() {
  final _data = <String, dynamic>{};
  _data['id'] = id;
  _data['name'] = name;
  _data['image'] = image;
  return _data;
 }
}
*/
