
import 'package:cis_app/lib/CartItemModel.dart';
import 'package:flutter/material.dart';

class cartItem extends StatelessWidget {
  const cartItem({Key? key,  required this.item}) : super(key: key);
 final cart_itemModel item;
  @override
  Widget build(BuildContext context) {
   return
     Dismissible(
     key: UniqueKey(),
     background: Container(

      color: Colors.red[800], 
       child: Padding(
         padding: const EdgeInsets.only(right: 10),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             Icon(Icons.delete_forever,color: Colors.white,size:40),
           ],
         ),
       ),
     ),
     child: SingleChildScrollView(

       child: Column(
         
         children: [
           Row(
                children: [
                Image.network("${item.images?[0].image}",width:85),
                SizedBox(width:5,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${item.name}",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.brown,fontSize:22),),
                    SizedBox(height: 15,),


                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(


                        children: [
                          Container(
                            width:100,

                            decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 3),
                              child: Row(

                                children: [
                                  CircleAvatar(child:

                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 15.0),
                                    child: Icon(Icons.minimize_outlined,color:Colors.brown,size:20.0,),
                                  ),
                                    backgroundColor:Colors.white,
                                    radius:12,),
                                  Expanded(child: Text(textAlign: TextAlign.center,
                                    "2",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w900,fontSize:20),)),
                                  CircleAvatar(child: Center(child: Icon(Icons.add,color:Colors.brown,size:25.0)),
                                    backgroundColor:Colors.white,
                                    radius:12,),
                                ],
                              ),

                            ),

                          ),

                          SizedBox(width:MediaQuery.of(context).size.width*0.09,),

                          Text("\$ ${item.price}",style: TextStyle(color: Colors.brown,fontSize:20,fontWeight: FontWeight.w400,))




                        ],
                      ),
                    )
                  ],
                ),


              ],)
              ,SizedBox(height: 10,)
              , Container(color: Colors.black12,width: double.infinity,height: 1.5,)
            ],

          ),
     ),
   );



    
  }
}
