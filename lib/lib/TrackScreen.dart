
import 'package:cis_app/lib/NavBar.dart';
import 'package:cis_app/lib/toggleScreen.dart';


import 'package:flutter/material.dart';

class trackScreen extends StatelessWidget {
  const trackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0,top: 20,bottom: 0.8,right: 0.8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center
            ,children: [
            Image.asset('assets/images/track.png'),
            SizedBox(height: 25.0,),
            Text("Your Order Has Been Accepted...",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.brown),),
            SizedBox(height: 10.0,),
            Text(maxLines: 2,"We’ve accepted your order, and we’re getting it ready.",
              textAlign: TextAlign.center,style: TextStyle(fontSize:23,fontWeight: FontWeight.w200,color: Colors.brown),),
            SizedBox(height: 40.0,),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(18.0),color: Colors.deepOrangeAccent,),
                height:45.0,width:double.infinity,
                // color: Colors.blue,
                child: TextButton(onPressed: (){Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>TitleScrollScreen ()));},
                    child:Text('Track Order',style: TextStyle(color: Colors.white,fontSize: 20.0),)),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(15.0),color: Colors.white,),
                height:45.0,width:double.infinity,
                // color: Colors.blue,
                child: TextButton(style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.deepOrangeAccent,width: 2.0),
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(14))),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>NavgatorBar ()));
                    }, child:Text('go Shopping',style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 20.0),)),

              ),
            )

          ],
          ),
        ),
      ),
    );
  }
}

