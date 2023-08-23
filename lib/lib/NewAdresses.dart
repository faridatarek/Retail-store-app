
import 'package:cis_app/lib/Adresses.dart';
import 'package:flutter/material.dart';

class newAddresses extends StatelessWidget {
  const newAddresses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 32),
          child: Text(textAlign: TextAlign.end,"New Addresses",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 30)),
        ),),

      body: Padding(
        padding: const EdgeInsets.only(top:80,left: 10,right: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container( height:55,decoration: BoxDecoration(color: Colors.grey.shade200,),
                child: TextFormField(

                    decoration: InputDecoration(enabledBorder: UnderlineInputBorder(borderRadius: BorderRadius.circular(15.0),borderSide: BorderSide.none),
                      labelText: "  Address Titel",labelStyle: TextStyle(color: Colors.brown[200],fontSize: 20.0),
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

              Container( height:55,decoration: BoxDecoration(color: Colors.grey.shade200,),
                child: TextFormField(

                    decoration: InputDecoration(enabledBorder: UnderlineInputBorder(borderRadius: BorderRadius.circular(15.0),borderSide: BorderSide.none),
                      labelText: "  Name Surname",labelStyle: TextStyle(color: Colors.brown[200],fontSize: 20.0),
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

              Container( height:55,decoration: BoxDecoration(color: Colors.grey.shade200,),
                child: TextFormField(

                    decoration: InputDecoration(enabledBorder: UnderlineInputBorder(borderRadius: BorderRadius.circular(15.0),borderSide: BorderSide.none),
                      labelText: "  City",labelStyle: TextStyle(color: Colors.brown[200],fontSize: 20.0),suffixIcon: Icon(Icons.arrow_drop_down_sharp,color:Colors.brown[300] ),
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

              Container( height:55,decoration: BoxDecoration(color: Colors.grey.shade200,),
                child: TextFormField(

                    decoration: InputDecoration(enabledBorder: UnderlineInputBorder(borderRadius: BorderRadius.circular(15.0),borderSide: BorderSide.none),
                      labelText: " Address",labelStyle: TextStyle(color: Colors.brown[200],fontSize: 20.0),
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
      ),
      bottomSheet: Container(

        decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(20.0)),color:Colors.deepOrangeAccent),

        margin: EdgeInsets.only(right: 9,left: 9,bottom: 40),
        width: double.infinity,

        child: TextButton(
            onPressed: (){
              { Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>addresses()));
              }
            }, child: Text("Add ",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:26.0,),)),
      ),
    );
  }
}
