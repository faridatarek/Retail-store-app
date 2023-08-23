import 'package:cis_app/lib/login/loginScreen.dart';

import 'package:flutter/material.dart';

class changPassword extends StatefulWidget {
  const changPassword({Key? key}) : super(key: key);

  @override
  State<changPassword> createState() => _changPasswordState();
}

class _changPasswordState extends State<changPassword> {
  var OldController=TextEditingController();
  var ConfirmController=TextEditingController();
  var   NewController =TextEditingController();
  var formKey=GlobalKey<FormState>();
  bool showPassword=false;
bool ShowNPassword=false;
  bool ShowNCPassword=false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title:Padding(
          padding: const EdgeInsets.only(top:27),
          child: Text('Change Password',style: TextStyle(color: Colors.deepOrangeAccent,fontSize:26,fontWeight: FontWeight.bold,)),
        ), ),
      body: SingleChildScrollView(
        child: Form(
            key: formKey,
            child: Padding(
                padding: const EdgeInsets.only(top:50),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 11,left: 11),
                        child: Container(

                          decoration: BoxDecoration(color: Colors.grey.shade200,),
                          child: TextFormField(
                              controller:OldController,
                              obscureText: showPassword
                              ,decoration: InputDecoration(enabledBorder: UnderlineInputBorder(borderRadius: BorderRadius.circular(15.0),borderSide: BorderSide.none),
                              labelText: "Old Password",labelStyle: TextStyle(color: Colors.brown,fontSize: 20.0),
                              border:OutlineInputBorder(borderRadius:BorderRadius.circular(12.0)),
                              prefixIcon: Icon(Icons.lock,color: Colors.deepOrangeAccent,),
                            suffixIcon:IconButton(onPressed: (){
                              setState(() {
                                showPassword =!showPassword;
                              });
                            },  icon:showPassword?(Icon(Icons.visibility,color: Colors.deepOrangeAccent,)):(Icon(Icons.visibility_off,color: Colors.deepOrangeAccent,)))

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
                      Padding(
                        padding: const EdgeInsets.only(right: 11,left: 11),
                        child: Container(

                          decoration: BoxDecoration(color: Colors.grey.shade200,),
                          child: TextFormField(
                              controller:NewController,
                              obscureText: ShowNPassword
                              ,decoration: InputDecoration(enabledBorder: UnderlineInputBorder(borderRadius: BorderRadius.circular(15.0),borderSide: BorderSide.none),
                              labelText: "New Password",labelStyle: TextStyle(color: Colors.brown,fontSize: 20.0),
                              border:OutlineInputBorder(borderRadius:BorderRadius.circular(12.0)),
                              prefixIcon: Icon(Icons.lock,color: Colors.deepOrangeAccent,),
                              suffixIcon:IconButton(onPressed: (){
                                setState(() {
                                  ShowNPassword=! ShowNPassword;
                                });
                              },  icon: ShowNPassword?(Icon(Icons.visibility,color: Colors.deepOrangeAccent,)):(Icon(Icons.visibility_off,color: Colors.deepOrangeAccent,)))

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
                      Padding(
                        padding: const EdgeInsets.only(right: 11,left: 11),
                        child: Container(

                          decoration: BoxDecoration(color: Colors.grey.shade200,),
                          child: TextFormField(
                              controller:ConfirmController,
                              obscureText:ShowNCPassword
                              ,decoration: InputDecoration(enabledBorder: UnderlineInputBorder(borderRadius: BorderRadius.circular(15.0),borderSide: BorderSide.none),
                              labelText: "Confirm Password",labelStyle: TextStyle(color: Colors.brown,fontSize: 20.0),
                              border:OutlineInputBorder(borderRadius:BorderRadius.circular(12.0)),
                              prefixIcon: Icon(Icons.lock,color: Colors.deepOrangeAccent,),
                              suffixIcon:IconButton(onPressed: (){
                                setState(() {
                                  ShowNCPassword =!ShowNCPassword;
                                });
                              },  icon:ShowNCPassword?(Icon(Icons.visibility,color: Colors.deepOrangeAccent,)):(Icon(Icons.visibility_off,color: Colors.deepOrangeAccent,)))

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
                      


                    ]))),
      ),
      bottomSheet:
      Container(
        height: 150,
        child: Column(

          children: [
            Container(

              decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(20.0)),color:Colors.deepOrangeAccent),

              margin: EdgeInsets.only(right: 9,left: 9,bottom:4),
              width: double.infinity,

              child: TextButton(
                  onPressed: (){
                    if(formKey.currentState!.validate()) {  Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>loginScreen ()));
                    }
                  }, child: Text("Confirm",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:22.0,),)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15,left: 9,right: 9),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(15.0),color: Colors.white,),
                height:45.0,width:double.infinity,
                // color: Colors.blue,
                child: TextButton(style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.deepOrangeAccent,width: 2.0),
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(14))),
                    onPressed: (){
                    }, child:Text('Back to sign in',style: TextStyle(color: Colors.deepOrangeAccent,fontWeight: FontWeight.w600,fontSize:22.0,),)),

              ),
            )
          ],
        ),
      ),

    );
  }
}
