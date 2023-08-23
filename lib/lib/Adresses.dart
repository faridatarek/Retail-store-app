

import 'package:cis_app/lib/NewAdresses.dart';
import 'package:flutter/material.dart';

class addresses extends StatelessWidget {
  const addresses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 32),
          child: Text(textAlign: TextAlign.end,"Addresses",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 30)),
        ), actions: [ IconButton(iconSize: 30,icon:Icon(Icons.add),color: Colors.deepOrange,onPressed: (){
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) =>newAddresses()));}
      ) ]),
      body: Padding(
        padding: const EdgeInsets.only(top:80,right: 10,left:10),
        child: Column(children: [
          InkWell(
            onTap: (){

            },
            child: Row(

              children: [
                Icon(Icons.home,color: Colors.brown,size: 35),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Home',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold,fontSize: 25),),
                    Text('Lungangen 6,41722',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w200,fontSize:15),),
                  ],
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios,color: Colors.brown,size:22),
              ],
            ),
          ),
         SizedBox(height:20,)
          , Container(color: Colors.black12,width: double.infinity,height: 1.5,),
          InkWell(
            onTap: (){

            },
            child: Padding(
              padding: const EdgeInsets.only(top:20,bottom:5),
              child: Row(

                children: [
                  Icon(Icons.work,color: Colors.brown,size: 35),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Office',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold,fontSize: 25),),
                      Text('Lungangen 6,41722',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w200,fontSize:15),),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios,color: Colors.brown,size:22),
                ],
              ),
            ),
          ),
          SizedBox(height:20,)
          , Container(color: Colors.black12,width: double.infinity,height: 1.5,)
        ]),
      ),
    );
  }
}
