import 'dart:developer';

import 'package:cis_app/lib/CartItemModel.dart';
import 'package:cis_app/lib/Networks/DioHelper.dart';
import 'package:cis_app/lib/cartItem.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';


class cartScreen extends StatefulWidget {
  const cartScreen({Key? key}) : super(key: key);

  @override
  State<cartScreen> createState() => _cartScreenState();
}

class _cartScreenState extends State<cartScreen> {
  List<cart_itemModel> itemAPI = [];
  bool isloading =true;
  Categories() async {
    setState(()=>isloading=false );
    final response = await DioHelper.getData(url: "/products/category/2");
    if (response.statusCode == 200 || response.statusCode == 201) {
      itemAPI = ((response.data["data"] as List)
          .map((e) => cart_itemModel.fromJson(e))
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
            title: Text("Cart",style: TextStyle(fontSize: 25,color: Colors.deepOrange),)),
      body:Column(
        children: [
          Expanded(
            child: ConditionalBuilder(builder: (context)=> ListView(children: [
    MaterialButton(
    onPressed: (){
      /*Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>detailsScreen(producct: null,)));*/
    }
    ,
    child: Container(
    height: MediaQuery.of(context).size.height,

    child: GridView.builder(

    itemCount:itemAPI.length,
    gridDelegate:
    SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 1,
    crossAxisSpacing:0,
    childAspectRatio:3,
    mainAxisSpacing:0),

    itemBuilder: (context, index) {
    return cartItem(item:itemAPI[index] ,);



    })),
    ),
    ]),condition:isloading,
    fallback:  (context)=>Center(child: CircularProgressIndicator(color: Colors.deepOrange),),)

          )
        ],
      ),



    );
  }
}
