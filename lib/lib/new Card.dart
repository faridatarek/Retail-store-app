
import 'package:cis_app/lib/MyCardsScreen.dart';
import 'package:flutter/material.dart';

class newCard extends StatelessWidget {
  const newCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Padding(
        padding: const EdgeInsets.only(top: 32),
        child: Text(textAlign: TextAlign.end,"New Card",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 30)),
      ),),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Text("Card Number",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold,fontSize:22),),
            Container( height:55,decoration: BoxDecoration(color: Colors.grey.shade200,),
              child: TextFormField(

                  decoration: InputDecoration(enabledBorder: UnderlineInputBorder(borderRadius: BorderRadius.circular(15.0),borderSide: BorderSide.none),
                  labelText: "  xxxx xxxx xxxx xxxx",labelStyle: TextStyle(color: Colors.brown,fontSize: 20.0),
                  border:OutlineInputBorder(borderRadius:BorderRadius.circular(12.0)),),
           keyboardType: TextInputType.name,
                  validator: (String ? value){
                    if(value!.isEmpty){
                      return"Enter Your Name,Please";
                    }
                    return null;
                  }
              ),
            ),
            SizedBox(height: 25,),
            Text("Expiry Date",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold,fontSize:22),),
            Container( height:55,decoration: BoxDecoration(color: Colors.grey.shade200,),
              child: TextFormField(

                  decoration: InputDecoration(enabledBorder: UnderlineInputBorder(borderRadius: BorderRadius.circular(15.0),borderSide: BorderSide.none),
                    labelText: "  MM/YY",labelStyle: TextStyle(color: Colors.brown,fontSize: 20.0),
                    border:OutlineInputBorder(borderRadius:BorderRadius.circular(12.0)),),
                  keyboardType: TextInputType.name,
                  validator: (String ? value){
                    if(value!.isEmpty){
                      return"Enter Your Name,Please";
                    }
                    return null;
                  }
              ),
            ),
            SizedBox(height: 25,),
            Text("CCV",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold,fontSize:22),),
            Container( height:55,decoration: BoxDecoration(color: Colors.grey.shade200,),
              child: TextFormField(

                  decoration: InputDecoration(enabledBorder: UnderlineInputBorder(borderRadius: BorderRadius.circular(15.0),borderSide: BorderSide.none),
                    labelText: " ****",labelStyle: TextStyle(color: Colors.brown,fontSize: 20.0),
                    border:OutlineInputBorder(borderRadius:BorderRadius.circular(12.0)),),
                  keyboardType: TextInputType.name,
                  validator: (String ? value){
                    if(value!.isEmpty){
                      return"Enter Your Name,Please";
                    }
                    return null;
                  }
              ),
            ),

          ],
        ),
      ),
      bottomSheet: Container(

        decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(20.0)),color:Colors.deepOrangeAccent),

        margin: EdgeInsets.only(right: 9,left: 9,bottom: 40),
        width: double.infinity,

        child: TextButton(
            onPressed: (){
              { Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) =>myCards()));
              }
            }, child: Text("Add Card",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:26.0,),)),
      ),
    );
  }
}
