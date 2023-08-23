import 'package:flutter/material.dart';

class historyScreen extends StatelessWidget {
  const historyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:     Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height:85,
              child: Row(

                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 0.8,left: 0.8,bottom:12,top: 0.8),
                    child: CircleAvatar(  radius:30,backgroundColor: Colors.deepOrangeAccent,

                        child: Icon(Icons.shopping_basket,color: Colors.white,size:30)),
                  ),
                  SizedBox(width: 10,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Order #357',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold,fontSize: 25),),
                      SizedBox(height: 4,),
                      Text('Delivered',style: TextStyle(color: Colors.green,fontWeight: FontWeight.w400,fontSize:18),),
                      SizedBox(height: 4,),
                      Text('October 26,2022',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w400,fontSize: 19),),
                    ],
                  ),
                  Spacer(),
                  Text("700\$",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.w400,fontSize:27)),


                ],
              ),

            ),

          ),
          SizedBox(height:8,)
          , Container(color: Colors.black12,width: double.infinity,height: 1.5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height:85,
              child: Row(

                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 0.8,left: 0.8,bottom:12,top: 0.8),
                    child: CircleAvatar(  radius:30,backgroundColor: Colors.deepOrangeAccent,

                        child: Icon(Icons.shopping_basket,color: Colors.white,size:30)),
                  ),
                  SizedBox(width: 10,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Order #356',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold,fontSize: 25),),
                      SizedBox(height: 4,),
                      Text('Cancelled',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w400,fontSize:18),),
                      SizedBox(height: 4,),
                      Text('October 14,2022',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w400,fontSize: 19),),
                    ],
                  ),
                  Spacer(),
                  Text("592\$",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.w400,fontSize:30)),


                ],
              ),

            ),

          ),
          SizedBox(height:8,)
          , Container(color: Colors.black12,width: double.infinity,height: 1.5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height:85,
              child: Row(

                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 0.8,left: 0.8,bottom:12,top: 0.8),
                    child: CircleAvatar(  radius:30,backgroundColor: Colors.deepOrangeAccent,

                        child: Icon(Icons.shopping_basket,color: Colors.white,size:30)),
                  ),
                  SizedBox(width: 10,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Order #355',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold,fontSize: 25),),
                      SizedBox(height: 4,),
                      Text('Delivered',style: TextStyle(color: Colors.green,fontWeight: FontWeight.w400,fontSize:18),),
                      SizedBox(height: 4,),
                      Text('July 31,2022',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w400,fontSize: 19),),
                    ],
                  ),
                  Spacer(),
                  Text("894\$",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.w400,fontSize:30)),


                ],
              ),

            ),

          ),
          SizedBox(height:8,)
          , Container(color: Colors.black12,width: double.infinity,height: 1.5,)
        ],
      ),

    );
  }
}
