
import 'package:cis_app/lib/ChangPassword/changPassword.dart';
import 'package:cis_app/lib/EditProfile/editPrf.dart';
import 'package:cis_app/lib/EndScreen.dart';
import 'package:cis_app/lib/emptyCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile',style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 28,fontWeight: FontWeight.w700,)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 35,right: 10,left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => editprof()));
              },
              child: Row(

                children: [
                  Icon(Icons.person,color: Colors.brown,size: 35),
                  SizedBox(width: 10,),
                  Text('Edit Profile',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w600,fontSize: 25),),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios,color: Colors.brown,size:22),
                ],
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => changPassword()));
              },
              child: Row(

                children: [
                  Icon(Icons.key,color: Colors.brown,size: 35),
                  SizedBox(width: 10,),
                  Text('Change Password',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w600,fontSize:25),),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios,color: Colors.brown,size:22),
                ],
              ),
            ),
            SizedBox(height: 30,),
            InkWell(onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => emptyCard()));
            },
              child: Row(

                children: [
                  Icon(Icons.wallet_outlined,color: Colors.brown,size: 35),
                  SizedBox(width: 10,),
                  Text('My Cards',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w600,fontSize: 25),),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios,color: Colors.brown,size:22),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Text("App Settings",style: TextStyle(color: Colors.deepOrange,fontSize:30,fontWeight: FontWeight.bold ),),
            SizedBox(height: 30,),
            Row(

              children: [
                Icon(Icons.notification_important_rounded,color: Colors.brown,size: 35),
                SizedBox(width: 10,),
                Text('Notification',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w600,fontSize: 25),),
                Spacer(),
               CupertinoSwitch(activeColor: Colors.deepOrange,value: true, onChanged: (value){})
              ],
            ),
            SizedBox(height: 30,),
            Row(

              children: [
                Icon(Icons.translate,color: Colors.brown,size: 35),
                SizedBox(width: 10,),
                Text('language',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w600,fontSize: 25),),
                Spacer(),
                Text("English",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w400,fontSize:18)),

                Icon(Icons.arrow_forward_ios,color: Colors.brown,size:22),
              ],
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>endScreen()));
              },
              child: Row(

                children: [
                  Icon(Icons.logout,color: Colors.brown,size: 35),
                  SizedBox(width: 10,),
                  Text('logout ',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w600,fontSize: 25),),

                ],
              ),
            ),


          ],
        ),
      ),
    );

  }
}
