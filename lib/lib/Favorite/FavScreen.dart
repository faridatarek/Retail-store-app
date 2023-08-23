
import 'package:cis_app/lib/EndScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class favScreen extends StatefulWidget {
  const favScreen({Key? key}) : super(key: key);

  @override
  State<favScreen> createState() => _favScreenState();
}

class _favScreenState extends State<favScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        title: Text('Favorite',style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 28,fontWeight: FontWeight.w700,)),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center
          ,children: [
          Image.asset('assets/images/fav.png'),
          SizedBox(height: 25.0,),
          Text("your heart is empty",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.brown),),
          SizedBox(height: 10.0,),
          Text("start fall in love with some good goods",textAlign: TextAlign.center,style: TextStyle(fontSize:24,fontWeight: FontWeight.w400,color: Colors.brown),),
    SizedBox(height: 40.0,),
    Padding(
    padding: const EdgeInsets.all(9.0),
    child: Container(
    decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(18.0),color: Colors.deepOrangeAccent,),
    height:45.0,width:double.infinity,
    // color: Colors.blue,
    child: TextButton(onPressed: (){ Navigator.push(context,
        MaterialPageRoute(builder: (context) =>endScreen()));
    },
    child:Text('Start shoping',style: TextStyle(color: Colors.white,fontSize: 20.0),)),

    ),
    ),

          ],
        ),
      ),
    );



  }
}
