
import 'package:cis_app/lib/DetailesScreen.dart';
import 'package:cis_app/lib/Explor/ExplorScreen.dart';
import 'package:cis_app/lib/NetworkData/models/AllproductModel.dart';
import 'package:cis_app/lib/NetworkData/models/homeModel.dart';
import 'package:flutter/material.dart';

class CatgCards extends StatelessWidget {
  const CatgCards({Key? key,  required this.product}) : super(key: key);
  final allProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
      width: 170,
      height:200,
      decoration: BoxDecoration(

        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)), //border corner radius
        boxShadow:[
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), //color of shadow

            spreadRadius:2, //spread radius
            blurRadius:18, // blur radius
            //changes position of shadow
            //first paramerter of offset is left-right
            //second parameter is top to down
          ),
          //you can set more BoxShadow() here
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => productDetails(producct: product,) ,)
            );},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Expanded(
                child: Container(

                    child: Center(child: Image.network("${product.images?[0].image}"))),
              ),
              Text("${product.name}",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w600,fontSize:18),),
              Text("${product.stock}\kg",style: TextStyle(color: Colors.grey,fontSize:15),),
              SizedBox(height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$${product.price}",style: TextStyle(color: Colors.deepOrangeAccent,fontWeight: FontWeight.w600,fontSize:18),),
                    CircleAvatar(child: Icon(Icons.add,color:Colors.white,size:20.0),
                      backgroundColor:Colors.green,
                      radius:18,),


                  ]
              )
            ],
          ),
        ),
      ),


    );
  }
}

class catgCircle extends StatelessWidget {
  const catgCircle({Key? key, required this.categoriss}) : super(key: key);
  final HomeModel categoriss;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: (){
       Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => explorScreen(idOfCategory:categoriss.id ) ,)
        );
      },
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.orangeAccent[100],
            child: Container(

                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Image.network(categoriss.image),
                ))
            ,radius:50,),
          SizedBox(height: 3,),
          Text(overflow:TextOverflow.ellipsis,
            categoriss.name,style: TextStyle(color: Colors.brown,fontSize:20.0,fontWeight: FontWeight.w400),)
        ],
      ),
    );;
  }
}
