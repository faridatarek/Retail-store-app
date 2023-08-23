import 'package:cis_app/lib/login/loginScreen.dart';
import 'package:cis_app/lib/registerScreen/registerScreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class startScreen extends StatefulWidget {
  const startScreen({Key? key}) : super(key: key);

  @override
  State<startScreen> createState() => _startScreenState();
}

class _startScreenState extends State<startScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:50.0),
              child: SvgPicture.asset('assets/images/get_started.svg',height: 300.0,width: 400.0,),
            ),
            SizedBox(height: 70.0,),
            Text("Realax and shop",style: TextStyle(color:Colors.brown,fontSize: 22.0)),
            SizedBox(height: 6.0,),
            Text("shop online and get grocories delivered from stores to your home in as 1 hour",
              textAlign: TextAlign.center,
              style: TextStyle(color:Colors.brown,fontSize: 20.0),),
    Padding(
        padding: const EdgeInsets.all(9.0),
        child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(15.0),color: Colors.deepOrangeAccent,),
        height:45.0,width:double.infinity,
        // color: Colors.blue,
        child: TextButton(onPressed: (){
           Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>registerScreen ()));
        }, child:Text('Sing Up',style: TextStyle(color: Colors.white,fontSize: 20.0),)),

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
                              MaterialPageRoute(builder: (context) =>loginScreen ()));
                }, child:Text('Sing IN',style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 20.0),)),

              ),
            )
          ]

        ),
      ),
    );
  }
}
