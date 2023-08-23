import 'dart:developer';
import 'package:cis_app/lib/Category1/Offers.dart';
import 'package:cis_app/lib/Category1/catgCards.dart';
import 'package:cis_app/lib/NetworkData/models/AllproductModel.dart';
import 'package:cis_app/lib/NetworkData/models/homeModel.dart';
import 'package:cis_app/lib/Networks/DioHelper.dart';
import 'package:cis_app/lib/allCategories/allcatgScreen.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Category1screen extends StatefulWidget {

  const Category1screen({Key? key}) : super(key: key);

  @override
  State<Category1screen> createState() => _Category1screenState();
}

class _Category1screenState extends State<Category1screen> {
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
  List<allProductModel> allCatgScreen = [];
  bool isLOding=true;
  allCategories() async {
    setState(()=>isloading=false );
    final response = await DioHelper.getData(url: "/products/");
    if (response.statusCode == 200 || response.statusCode == 201) {
      allCatgScreen = ((response.data["data"] as List)
          .map((e) => allProductModel.fromJson(e))
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
    setState(()=>isloading=true );
  }

  @override
  void initState() {
    Categories();
    allCategories();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Offers(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Categories',
                    style: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.w500,
                        fontSize: 25.0)),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => explorCircle()));
                  },
                  child: Text(
                    'See All',
                    style: TextStyle(
                        color: Colors.deepOrangeAccent, fontSize: 23.0),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child:Container(
                height: 130.0,
                child: ConditionalBuilder(builder: (context)=>
                    ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => catgCircle(
                      categoriss: categoriesScreen[index],
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 9.0,
                    ),
                    itemCount: categoriesScreen.length),condition:isloading,
                    fallback:  (context)=>Center(child: CircularProgressIndicator(color: Colors.deepOrange),),)
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular Deals',
                    style: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.w500,
                        fontSize: 25.0)),
                // SizedBox(width:MediaQuery.of(context).size.width*0.4,),
                InkWell(onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => allcatgScreen() ,)
                  );
                },
                  child: Text(
                    'See All',
                    style:
                    TextStyle(color: Colors.deepOrangeAccent, fontSize: 23.0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 300.0,
              child: ConditionalBuilder(builder: (_)=>ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CatgCards(
                      product: allCatgScreen[index],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20.0,
                  ),
                  itemCount: allCatgScreen.length),condition:isLOding
                ,fallback:  (context)=>Center(child: CircularProgressIndicator(color: Colors.deepOrange),),)
            ),
          ],
        ),
      ),
    ));
  }
}
