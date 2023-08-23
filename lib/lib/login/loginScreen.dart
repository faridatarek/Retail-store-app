import 'dart:developer';
import 'package:cis_app/lib/NavBar.dart';
import 'package:cis_app/lib/Networks/DioHelper.dart';
import 'package:cis_app/lib/Networks/userModel.dart';
import 'package:cis_app/lib/registerScreen/registerScreen.dart';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
 UserModel?user;
  String  LoginUrl="/login";
  var formKey=GlobalKey<FormState>();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var phoneController=TextEditingController();
  var nameController=TextEditingController();
  void login()async{
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
      log("Login error = ${response.data}");
      log("Login error = ${response.statusMessage}");
    } log(response.data.toString());
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:
        AppBar(

          title: Text("Sign in"),
          centerTitle: true,
        )
        ,body:
    Padding(
        padding: const EdgeInsets.all(11.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height:300.0,
                      width:MediaQuery.of(context).size.width,
                      alignment: AlignmentDirectional.center,
                      child: Image.asset('lib/images/sign_in.png')),
                  Text( "Enter your Email and password to access your account",
                    style: TextStyle(fontSize: 22.0,fontWeight:FontWeight.w700,color: Colors.brown),),
                  SizedBox(height:3.0,),

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

                  Container(
                      alignment: AlignmentDirectional.topEnd,
                      child: Text("Forgot password?",
                        style: TextStyle(color: Colors.deepOrangeAccent,fontWeight: FontWeight.w400,fontSize: 15.0),)),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(15.0),color: Colors.deepOrangeAccent,),
                      height:45.0,width:double.infinity,
                      // color: Colors.blue,
                      child: TextButton(onPressed: (){
                        login();
                      }, child:Text('Sing IN',style: TextStyle(color: Colors.white,fontSize: 20.0),)),

                    ),
                  ),
                  SizedBox(height:5.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account ?",style: TextStyle(fontSize: 20.0,color: Colors.brown),)

                      ,TextButton(onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>registerScreen ()));
                      }, child: Text("Sign up",style: TextStyle(fontSize: 20.0,color: Colors.deepOrangeAccent),))
                    ],
                  )

                ] ),
          ),
        )

    )


    );
  }
}


