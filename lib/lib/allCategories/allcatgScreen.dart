import 'dart:developer';
import 'package:cis_app/lib/Category1/catgCards.dart';
import 'package:cis_app/lib/NetworkData/models/AllproductModel.dart';
import 'package:cis_app/lib/NetworkData/models/homeModel.dart';
import 'package:cis_app/lib/Networks/DioHelper.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fluttertoast/fluttertoast.dart';

class allcatgScreen extends StatefulWidget {
  const allcatgScreen({Key? key}) : super(key: key);

  @override
  State<allcatgScreen> createState() => _allcatgScreenState();
}

class _allcatgScreenState extends State<allcatgScreen> {
  List<allProductModel>allCatgScreen=[];
  bool isloading =true;
  allCategories()async{
    setState(()=>isloading=false );
    final response=await DioHelper.getData(url: "/products/");
    if(response.statusCode==200||response.statusCode==201){
      allCatgScreen=((response.data["data"]as List).map((e) => allProductModel.fromJson(e)).toList());
    }else{
      log("message error ${response.statusMessage}");
      Fluttertoast.showToast(
          msg:"Error${response.statusMessage}"
          ,backgroundColor:Colors.red,
          textColor: Colors.white,
          fontSize: 16

      );
    }
    setState(()=>isloading=true );

  }
  @override
  void initState(){
    allCategories();
    super.initState();

  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('All popular',style: TextStyle(color: Colors.deepOrangeAccent,fontWeight: FontWeight.w700,fontSize: 30)),
      ),
      body:  ConditionalBuilder(builder: (context)=>
          GridView.custom(
        semanticChildCount: allCatgScreen.length,
        gridDelegate: SliverWovenGridDelegate.count(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          pattern: [
            WovenGridTile( .8,
              crossAxisRatio: 1,
              alignment: AlignmentDirectional.bottomEnd,),
            WovenGridTile(
              .9,
              crossAxisRatio: 1,
              alignment: AlignmentDirectional.bottomEnd,
            ),
          ],
        ),

        childrenDelegate: SliverChildBuilderDelegate(
              (context, index) =>CatgCards(product:  allCatgScreen[index],),
        ),
      ),condition:isloading,
        fallback:  (context)=>Center(child: CircularProgressIndicator(color: Colors.deepOrange),),)

    );

  }
}
class explorCircle extends StatefulWidget {
  const explorCircle({Key? key}) : super(key: key);

  @override
  State<explorCircle> createState() => _explorCircleState();
}

class _explorCircleState extends State<explorCircle> {
  List<HomeModel> categoriesScreen = [];
  bool isloading =true;
  Categories() async {
    setState(()=>isloading=false );
    final response = await DioHelper.getData(url: "/categories");
    if (response.statusCode == 200 || response.statusCode == 201) {
      categoriesScreen = ((response.data["data"] as List)
          .map((e) => HomeModel.fromJson(e))
          .toList());
    } else {
      log("message error ${response.statusMessage}");
      Fluttertoast.showToast(
          msg:"Error${response.statusMessage}"
          ,backgroundColor:Colors.red,
          textColor: Colors.white,
          fontSize: 16

      );
    }
    setState(() {
      isloading=true;
    });
  }
  @override
  void initState() {
    Categories();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Categories',style: TextStyle(color: Colors.deepOrangeAccent,fontWeight: FontWeight.w700,fontSize: 30)),
        ),
      body: ConditionalBuilder(builder: (context)=> GridView.builder(
          padding: EdgeInsets.only(left: 0.4),
          itemCount:   categoriesScreen.length,
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 2.0,
              childAspectRatio: .8,
              mainAxisSpacing: 15.0),

          itemBuilder: (context, index) => catgCircle(
        categoriss: categoriesScreen[index],
      ),),condition:isloading,
        fallback:  (context)=>Center(child: CircularProgressIndicator(color: Colors.deepOrange),),)
    );
  }
}
