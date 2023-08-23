import 'dart:developer';

import 'package:cis_app/lib/NavBar.dart';
import 'package:cis_app/lib/Networks/DioHelper.dart';
import 'package:cis_app/lib/Networks/userModel.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class registerScreen extends StatefulWidget {
  const registerScreen({Key? key}) : super(key: key);

  @override
  State<registerScreen> createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  var formKey=GlobalKey<FormState>();
  UserModel?user;
  String  LoginUrl="/register";
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var phoneController=TextEditingController();
  var nameController=TextEditingController();
  void register()async{
    final data={
      "email": emailController.text,
      "password":passwordController.text
    };
    Response response= await DioHelper.postData(url: LoginUrl,body: data);
    if(response.statusCode==200){
      user=UserModel.fromJson(response.data);
      Navigator.push(context,
          MaterialPageRoute(builder: (context) =>NavgatorBar()));

    }else{
      log("register error = ${response.data}");
      log("register error = ${response.statusMessage}");
    } log(response.data.toString());
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:
        AppBar(

          title: Text("Sign up"),
          centerTitle: true,
        )
        ,body:
    Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(

                      width: MediaQuery.of(context).size.width
                      ,alignment: AlignmentDirectional.center,
                      child: Image.asset('lib/images/sign_up.png')),
                  Text("Enter the password",style: TextStyle(fontSize: 22.0,fontWeight:FontWeight.w700,color: Colors.brown),),
                  SizedBox(height:2.0,),
                  Text("For the security & safety please choose a password" ,
                      style: TextStyle(color: Colors.brown,fontSize:18.0,fontWeight:FontWeight.w500,)),
                  SizedBox(height:15.0,),
                  Container( decoration: BoxDecoration(color: Colors.grey.shade200,),
                    child: TextFormField(
                        controller: nameController
                        ,decoration: InputDecoration(enabledBorder: UnderlineInputBorder(borderRadius: BorderRadius.circular(15.0),borderSide: BorderSide.none),
                        labelText: "Name",labelStyle: TextStyle(color: Colors.brown,fontSize: 20.0),
                        border:OutlineInputBorder(borderRadius:BorderRadius.circular(12.0)),prefixIcon: Icon(Icons.person,color: Colors.brown,)
                    ),keyboardType: TextInputType.name,
                        validator: (String ? value){
                          if(value!.isEmpty){
                            return"Enter Your Name,Please";
                          }
                          return null;
                        }
                    ),
                  ),
                  SizedBox(height:15.0,),
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(color: Colors.grey.shade200,),
                    child: TextFormField(
                        controller: emailController,
                        decoration:InputDecoration(enabledBorder: UnderlineInputBorder(borderRadius: BorderRadius.circular(15.0),borderSide: BorderSide.none),
                            labelText: "Email",labelStyle: TextStyle(color: Colors.brown,fontSize: 20.0),
                            border:OutlineInputBorder(borderRadius:BorderRadius.circular(12.0)),prefixIcon: Icon(Icons.email_outlined,color: Colors.brown)
                        ),keyboardType: TextInputType.emailAddress,
                        validator: (String ? value){
                          if(value!.isEmpty){
                            return"Enter Your Email, Please";
                          }
                          return null;
                        }
                    ),
                  ),
                  SizedBox(height:15.0,),
                  Container(decoration: BoxDecoration(color: Colors.grey.shade200,),
                    child: TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(enabledBorder: UnderlineInputBorder(borderRadius: BorderRadius.circular(15.0),borderSide: BorderSide.none),
                          labelText: "Password",labelStyle: TextStyle(color: Colors.brown,fontSize: 20.0),
                          border: OutlineInputBorder(borderRadius:BorderRadius.circular(12.0)),prefixIcon: Icon(Icons.lock,color: Colors.brown),
                          suffixIcon:  Icon(Icons.remove_red_eye_outlined,color: Colors.deepOrangeAccent,),
                        ),keyboardType: TextInputType.number,
                        validator: (String ? value){
                          if(value!.isEmpty){
                            return"Password is required ";
                          }
                          return null;
                        }
                    ),
                  ),
                  SizedBox(height:15.0,),
                  Container(decoration: BoxDecoration(color: Colors.grey.shade200,),
                    child: TextFormField(
                        controller: phoneController,
                        decoration: InputDecoration(enabledBorder: UnderlineInputBorder(borderRadius: BorderRadius.circular(15.0),borderSide: BorderSide.none),
                            labelText: "Confirm Password",labelStyle: TextStyle(color: Colors.brown,fontSize: 20.0),
                            border: OutlineInputBorder(borderRadius:BorderRadius.circular(12.0)),prefixIcon: Icon(Icons.lock_reset,color: Colors.brown,),
                          suffixIcon:  Icon(Icons.remove_red_eye_outlined,color: Colors.deepOrangeAccent,),
                        ),keyboardType: TextInputType.phone,
                        validator: (String ? value){
                          if(value!.isEmpty){
                            return"Confirm";
                          }
                          return null;
                        }
                    ),
                  ),
                  /*Container(
                      alignment: AlignmentDirectional.topEnd,
                      child: Text("Forgot password?",style: TextStyle(color: Colors.deepOrangeAccent,fontWeight: FontWeight.w400,fontSize: 15.0),)),*/
                  Container(
                    decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(20.0)),color:Colors.deepOrangeAccent),

                    margin: EdgeInsets.all(9.0),
                    width: double.infinity,

                    child: TextButton(
                        onPressed: (){
                          if(formKey.currentState!.validate()) {

                            print(nameController.text);
                            print(emailController.text);
                            print(passwordController.text);
                            print(phoneController.text);
                            register();

                          }
                        }, child: Text("Sign Up",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:26.0,),)),


                  ),



                ] ),
          ),
        )

    )


    );


  }
}
