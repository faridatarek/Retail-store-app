

class cart_itemModel{
  late int id;
  late String name;
  late int price;
  late String description ;
  late int stock;
  late String category;
  late bool status;
  late String rate;
  List<Images>?images;

  cart_itemModel.fromJson(Map<String,dynamic>json){
    id=json["id"];
    name=json["name"];
    price=json["price"];
    description=json["description"];
    stock=json["stock"];
    category=json["category"];
    status=json["status"];
    rate=json["rate"];
    if(json["images"]!=null){
      images=<Images>[];
      json["images"].forEach((v){
        images!.add(Images.fromJson(v));
      });
    }

  }
}
class Images{
  String ?image;
  Images({this.image});
  Images.fromJson(Map<String,dynamic>json){
    image=json["image"];
  }
  Map<String,dynamic>toJson(){
    final Map<String,dynamic>data=new Map<String,dynamic>();
    data["image"]=this.image;
    return data;
  }

}