import 'package:flutter/material.dart';

class endScreen extends StatelessWidget {
  const endScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40,),
        child: Column(
            children: [
          Row(children: [

            Container(width: 200,height:150,
              child: Padding(
                padding: const EdgeInsets.only(left:12.0),
                child: Text.rich(
                  maxLines: 5,
                    TextSpan(
                        children:[
                          TextSpan(text:"it done By Your Fav ,Clever and Newbie ",
                            style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w400,fontSize:23),  ),
                          TextSpan(text:"Fariii",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.w400,fontSize:35),),

                          TextSpan(text:" With all love         🥰🥰🥰🥰 ",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w400,fontSize:23),),

                        ]
                    )
                ),
              ), /*Text(maxLines: 3,"it done By Your Fav ,Clever and young Fariii With all love 🥰🥰"
                  ,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),*/
            ),
         Expanded(child: Padding(
           padding: const EdgeInsets.only(top: 20),
           child: Container( height:160,decoration: BoxDecoration(shape: BoxShape.circle),
             clipBehavior: Clip.antiAliasWithSaveLayer,
               child: Image.asset("assets/images/end1.jpg")),
         ))



          ]),
        Expanded(child: Container(child: Image.asset("assets/images/end2.jpg"))),
        ]),
      ),
    );
  }
}

