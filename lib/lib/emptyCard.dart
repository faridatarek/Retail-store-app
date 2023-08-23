import 'package:cis_app/lib/new%20Card.dart';

import 'package:flutter/material.dart';

class emptyCard extends StatelessWidget {
  const emptyCard({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top:30),
            child: Text('My Cards',style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 28,fontWeight: FontWeight.w700,)),
          ),
          actions: [ IconButton(iconSize: 30,icon:Icon(Icons.add),color: Colors.deepOrange,onPressed: (){
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) =>newCard()));}
          ) ]),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/emptyCard.png"),
            Text("No Saved Card",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.brown),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25),
              child: Text(maxLines: 2,"You can save your card info to make purchase easier faster",style: TextStyle(fontSize:20,fontWeight: FontWeight.w500,color: Colors.brown),),
            )
          ],
        ),
      ),
    );
  }
}
