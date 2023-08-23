import 'package:cis_app/lib/new%20Card.dart';

import 'package:flutter/material.dart';

class myCards extends StatelessWidget {
  const myCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Cards',style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 28,fontWeight: FontWeight.w700,)),
       actions: [ IconButton(iconSize: 30,icon:Icon(Icons.add),color: Colors.deepOrange,onPressed: (){
         Navigator.pushReplacement(context,
           MaterialPageRoute(builder: (context) =>newCard()));}
      ) ]),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Dismissible(
              key: UniqueKey(),
              background: Container(

                color: Colors.red[800],
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.delete_forever,color: Colors.white,size:40),
                    ],
                  ),
                ),
              ),
              child: InkWell(
                onTap: (){

                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height:100,
                  child: Column(

                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(   decoration: BoxDecoration(

                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(5)), //border corner radius
                              boxShadow:[
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5), //color of shadow

                                  spreadRadius:1, //spread radius
                                  blurRadius:3, // blur radius
                                  //changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                                //you can set more BoxShadow() here
                              ],
                            ),

                                child: Image.network(height:40,width:50,"https://th.bing.com/th/id/OIP._GJ4a90oHJ9_INFo5XkckQHaEK?pid=ImgDet&rs=1")),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                           Text('My Card',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold,fontSize:22),),
                           SizedBox(height:8,),
                           Text('7654 **** **** 7654',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w400,fontSize:15),),],)
                         , Spacer(),
                          Icon(Icons.arrow_forward_ios,color: Colors.brown,size:22)

                        ],
                      ),
              SizedBox(height: 10,)
            , Container(color: Colors.black12,width: double.infinity,height: 1.5,)
                    ],
                  ),

                ),
              ),
            ),
            Dismissible(
              key: UniqueKey(),
              background: Container(

                color: Colors.red[800],
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.delete_forever,color: Colors.white,size:40),
                    ],
                  ),
                ),
              ),
              child: InkWell(
                onTap: (){

                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height:100,
                  child: Column(

                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(   decoration: BoxDecoration(

                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(5)), //border corner radius
                              boxShadow:[
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5), //color of shadow

                                  spreadRadius:1, //spread radius
                                  blurRadius:3, // blur radius
                                  //changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                                //you can set more BoxShadow() here
                              ],
                            ),

                                child: Image.network(height:40,width:50,"https://th.bing.com/th/id/OIP._GJ4a90oHJ9_INFo5XkckQHaEK?pid=ImgDet&rs=1")),
                          ),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text('My Card',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w600,fontSize:22),),
                            SizedBox(height:8,),
                            Text('9657 **** **** 3846',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w400,fontSize:15),),],)
                          , Spacer(),
                          Icon(Icons.arrow_forward_ios,color: Colors.brown,size:22)

                        ],
                      ),
                      SizedBox(height: 10,)
                      , Container(color: Colors.black12,width: double.infinity,height: 1.5,)
                    ],
                  ),

                ),
              ),
            ),
            Column(
              children: [
                Row(

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(height:50,width:60,"https://cdn.freebiesupply.com/logos/large/2x/apple-pay-payment-mark-logo-png-transparent.png"),
                    ),
                    SizedBox(width: 10,),
                    Text('Apple Pay',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w600,fontSize: 25),),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(Icons.check,color: Colors.green,size:30),
                    ),
                  ],
                ),
                SizedBox(height: 10,)
                , Container(color: Colors.black12,width: double.infinity,height: 1.5,)
              ],
            ),


          ],
        ),
      ),
    );
  }
}
