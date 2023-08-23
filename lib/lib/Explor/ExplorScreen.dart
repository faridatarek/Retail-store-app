import 'dart:developer';
import 'package:cis_app/lib/Category1/catgCards.dart';
import 'package:cis_app/lib/NetworkData/models/AllproductModel.dart';
import 'package:cis_app/lib/Networks/DioHelper.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class explorScreen extends StatefulWidget {

  const explorScreen({Key? key, required this.idOfCategory, }) : super(key: key);
final int  idOfCategory;

  @override
  State<explorScreen> createState() => _explorScreenState();
}

class _explorScreenState extends State<explorScreen> {
final String prodUrl="/products/category/";
  List<allProductModel> allCatgScreen = [];
  bool isLoadindalllPro=true;
  allCategories() async {
    setState(()=>isLoadindalllPro=false );
    final response = await DioHelper.getData(url: "$prodUrl${widget.idOfCategory}");
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
    setState(()=>isLoadindalllPro=true );
  }
  @override
  void initState() {
    allCategories();
     super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Categories',style: TextStyle(color: Colors.deepOrangeAccent,fontWeight: FontWeight.w700,fontSize: 30)),
      ),
      body:  ConditionalBuilder(condition: isLoadindalllPro,
        builder: (context)=>Column(
        children: [
          Expanded(
            child: ListView(children: [
              MaterialButton(
                onPressed: (){
                  /*Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>detailsScreen(producct: null,)));*/
                }
                ,
                child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: GridView.builder(
                        padding: EdgeInsets.only(left: 0.4),
                        itemCount:   allCatgScreen.length,
                        gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 6.0,
                            childAspectRatio: .8,
                            mainAxisSpacing: 15.0),

                        itemBuilder: (context, index) {
                          return CatgCards( product:allCatgScreen[index],);



                        })),
              ),
            ]),
          )
        ],
      ),fallback: (context)=>Center(child: CircularProgressIndicator(color: Colors.deepOrange),),)
    );
  }
}
