
import 'package:cis_app/lib/NetworkData/models/AllproductModel.dart';
import 'package:flutter/material.dart';

class productDetails extends StatelessWidget {
  final allProductModel producct;
  const productDetails({Key? key, required this.producct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(

       iconTheme: IconThemeData(color: Colors.deepOrange,size: 25),

        ),
        body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            Expanded(
              child: Container(

                  child: Center(child: Image.network("${producct.images?[0].image}"))),
            ),
            Text("${producct.name}",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w900,fontSize:30),),
            Text.rich(
                TextSpan(
                    children:[
                      TextSpan(text:"\$${producct.price}",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w400,fontSize:18),  ),
                      TextSpan(text:"/st",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w400,fontSize:15),),

                    ]
                )
            ),

            SizedBox(height: 10,),
            Text("${producct.description}",
              style: TextStyle(color: Colors.brown,fontSize:15,fontWeight: FontWeight.w600,),),
            SizedBox(height: 15,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(

                      decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          children: [
                            CircleAvatar(child: Icon(Icons.minimize,color:Colors.brown,size:20.0),
                              backgroundColor:Colors.white,
                              radius:18,),
                            Expanded(child: Text(textAlign: TextAlign.center,
                              "2",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w900,fontSize:25),)),
                            CircleAvatar(child: Icon(Icons.add,color:Colors.brown,size:20.0),
                              backgroundColor:Colors.white,
                              radius:18,),
                          ],
                        ),

                      ),

                    ),
                  ),
                  SizedBox(width: 20,),
                  Icon(Icons.favorite_border,color:Colors.deepOrange,size:35.0)




                ]
            ),
            SizedBox(height:25,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:10),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(20.0),color: Colors.deepOrangeAccent,),
                height:45.0,width:double.infinity,
                // color: Colors.blue,
                child: TextButton(onPressed: (){

                }, child:Text(' Add To Cart',style: TextStyle(color: Colors.white,fontSize: 20.0),)),

              ),
            ),
          ],
        ),
    ),
      );
  }
}
