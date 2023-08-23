import 'package:flutter/material.dart';

class editprof extends StatefulWidget {
  const editprof({Key? key}) : super(key: key);

  @override
  State<editprof> createState() => _editprofState();
}

class _editprofState extends State<editprof> {
  var emailController=TextEditingController();
  var phoneController=TextEditingController();
  var formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
          title:Padding(
            padding: const EdgeInsets.only(top:15),
            child: Text('Edit Profile',style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 28,fontWeight: FontWeight.w700,)),
          ), ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.only(top:40,left: 10,right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(

                decoration: BoxDecoration(color: Colors.grey.shade200,),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextFormField(
                      controller:emailController
                      ,decoration: InputDecoration(enabledBorder: UnderlineInputBorder(borderRadius: BorderRadius.circular(15.0),borderSide: BorderSide.none),
                      labelText: "mati egh",labelStyle: TextStyle(color: Colors.brown,fontSize: 20.0,fontWeight: FontWeight.bold),
                      border:OutlineInputBorder(borderRadius:BorderRadius.circular(12.0)),

                  ),keyboardType: TextInputType.emailAddress,
                      validator: (String ? value){
                        if(value!.isEmpty){
                          return"NO Edits to Your Email";
                        }
                        return null;
                      }
                  ),
                ),
              ),
              SizedBox(height:25.0,),
              Container( decoration: BoxDecoration(color: Colors.grey.shade200,),
                child: Padding(
                  padding: const EdgeInsets.only(left:15),
                  child: TextFormField(
                      controller:phoneController
                      ,decoration: InputDecoration(enabledBorder: UnderlineInputBorder(borderRadius: BorderRadius.circular(15.0),borderSide: BorderSide.none),
                      labelText: "+46 707 07 07",labelStyle: TextStyle(color: Colors.brown,fontSize: 20.0,fontWeight: FontWeight.bold),
                      border:OutlineInputBorder(borderRadius:BorderRadius.circular(12.0)),

                  ),keyboardType: TextInputType.phone,
                      validator: (String ? value){
                        if(value!.isEmpty){
                          return"NO Edits to Your phone";
                        }
                        return null;
                      }
                  ),
                ),
              ),



            ]))),
      bottomSheet: Container(

        decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(20.0)),color:Colors.deepOrangeAccent),

        margin: EdgeInsets.only(right: 9,left: 9,bottom: 40),
        width: double.infinity,

        child: TextButton(
            onPressed: (){
              if(formKey.currentState!.validate()) {
              }
            }, child: Text("Update Profile",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:26.0,),)),
      ),);

  }
}




