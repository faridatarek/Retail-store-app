
import 'package:cis_app/lib/Adresses.dart';
import 'package:cis_app/lib/PaymentScreen.dart';
import 'package:cis_app/lib/ProfileScreen.dart';
import 'package:cis_app/lib/toggleScreen.dart';
import 'package:flutter/material.dart';

class accScreen extends StatefulWidget {
  const accScreen({Key? key}) : super(key: key);

  @override
  State<accScreen> createState() => _accScreenState();
}

class _accScreenState extends State<accScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Account',style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 28,fontWeight: FontWeight.w700,)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>profileScreen()));
            },
              child: Row(

                children: [
                  Icon(Icons.person,color: Colors.deepOrangeAccent,size: 35),
                  SizedBox(width: 10,),
                  Text('Profile',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w600,fontSize: 25),)
                ],
              ),
            ),
            SizedBox(height: 40,),
            InkWell(onTap: (){ Navigator.push(context,
                MaterialPageRoute(builder: (context) =>TitleScrollScreen()));},
              child: Row(

                children: [
                  CircleAvatar(  radius:16,backgroundColor: Colors.deepOrangeAccent,

                      child: Icon(Icons.shopping_basket,color: Colors.white,size: 26)),
                  SizedBox(width: 10,),
                  Text('Orders',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w600,fontSize: 25),)
                ],
              ),
            ),
            SizedBox(height: 40,),
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>addresses()));
              },
              child: Row(

                children: [
                  Icon(Icons.location_on_rounded,color: Colors.deepOrangeAccent,size: 35),
                  SizedBox(width: 10,),
                  Text('Address',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w600,fontSize: 25),)
                ],
              ),
            ),
            SizedBox(height: 40,),
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>paymentScreen()));
              },
              child: Row(

                children: [
                  Icon(Icons.payment_outlined,color: Colors.deepOrangeAccent,size: 35),
                  SizedBox(width: 10,),
                  Text('Payment',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w600,fontSize: 25),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
