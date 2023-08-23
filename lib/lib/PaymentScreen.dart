
import 'package:cis_app/lib/TrackScreen.dart';
import 'package:flutter/material.dart';

class paymentScreen extends StatelessWidget {
  const paymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Text(
              textAlign: TextAlign.end,
              "Payment",
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                  fontSize: 28)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 115,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffFFF4E9)),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Delivery Location",
                            style: TextStyle(
                                color: Colors.brown,
                                fontWeight: FontWeight.w600,
                                fontSize: 24)),
                      ),
                      Spacer(),
                      Text("Change ",
                          style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.w600,
                              fontSize: 21)),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.deepOrange, size: 35),
                    Container(
                      width: 250,
                      child: Text(
                          textDirection: TextDirection.rtl,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.end,
                          "Floor 4,Kartini Tower No 43 LUmajang,Jawa Timur",
                          style: TextStyle(
                              color: Colors.brown,
                              fontWeight: FontWeight.w400,
                              fontSize: 18)),
                    )
                  ],
                )
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 240,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffFFF4E9)),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Expected date & Time",
                        style: TextStyle(
                            color: Colors.brown,
                            fontWeight: FontWeight.w600,
                            fontSize: 24)),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: 47,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              label: Text("Select Date",
                                  style: TextStyle(
                                      color: Colors.brown,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18)),
                              prefixIcon: Icon(
                                Icons.date_range,
                                color: Colors.brown,
                                size: 30,
                              ),
                              suffixIcon: Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.brown,
                                size: 35,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Container( height:40,
                          width:85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color:Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Center(
                              child: Text("8AM-11AM", style: TextStyle(
                                  color: Colors.brown,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15)),
                            ),
                          ),

                        ),
                        Container( height:40,
                          width:85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color:Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Center(
                              child: Text("11AM-13PM", style: TextStyle(
                                  color: Colors.brown,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15)),
                            ),
                          ),

                        ),
                        Container( height:40,
                          width:85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color:Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Center(
                              child: Text("13PM-15PM", style: TextStyle(
                                  color: Colors.brown,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14)),
                            ),
                          ),

                        )
                      ],),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container( height:40,
                            width:85,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color:Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Center(
                                child: Text("8AM-11AM", style: TextStyle(
                                    color: Colors.brown,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14)),
                              ),
                            ),

                          ),
                          Container( height:40,
                            width:85,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color:Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Center(
                                child: Text("11AM-13PM", style: TextStyle(
                                    color: Colors.brown,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14)),
                              ),
                            ),

                          ),
                          Container( height:40,
                            width:85,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color:Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Center(
                                child: Text("13PM-15PM", style: TextStyle(
                                    color: Colors.brown,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14)),
                              ),
                            ),

                          )
                        ],),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 115,
            child: Padding(
              padding: const EdgeInsets.all(13),
              child: Column(children: [
                Row(children: [
                  Text("In-Store Pick Up",
                      style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.w600,
                          fontSize:23)),
                  Spacer(),
                  Text("FREE",
                      style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.w600,
                          fontSize: 23)),
                ],),
                SizedBox(height: 10,),
                Row(children: [
                  Expanded(
                    child: Text(maxLines: 2,"Some Store May Be Temporaily Unavailable.",
                        style: TextStyle(
                            color: Colors.brown,
                            fontWeight: FontWeight.w500,
                            fontSize:20)),
                  ),

                  Icon(Icons.arrow_forward_ios,color: Colors.brown,)

                ],)
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container( height: 95,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffFFF4E9)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(children: [
                  Icon(Icons.shopping_basket_rounded,color: Colors.brown,size: 35,),
                  SizedBox(width: 9,),
                  Text("See Itemes",
                      style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.w700,
                          fontSize: 22)),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios,color: Colors.brown,size: 22,),

                ]),
              ),


            ),

          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffFFF4E9)),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text( "Payment Method",
                        style: TextStyle(
                            color: Colors.brown,
                            fontWeight: FontWeight.bold,
                            fontSize: 25)),
                  ),
                  Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Image.network(height:50,width:60,"https://cdn.freebiesupply.com/logos/large/2x/apple-pay-payment-mark-logo-png-transparent.png"),
                      ),
                      SizedBox(width: 10,),
                      Text('Apple Pay',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w400,fontSize: 20),),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(Icons.check,color: Colors.green,size:30),

                      ),


                    ],
                  ),
                  Container(color: Colors.black12,width: double.infinity,height: 1.5,),
                  Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: CircleAvatar(backgroundColor: Colors.green,child: Icon(Icons.monetization_on_outlined,size: 35,color: Colors.white),


                        ),
                      ),
                      SizedBox(width: 10,),
                      Text('Cash On Delivery',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w400,fontSize: 20),),


                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 220,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffFFF4E9)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text(
                    "Order Sammery",
                    style: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                        fontSize: 22)),
                SizedBox(height: 10,),
                Row(children: [
                  Text(
                      "Subtotal",
                      style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.w400,
                          fontSize: 22)),
                  Spacer(),
                  Text(
                      "\$148.00",
                      style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.w400,
                          fontSize: 22)),
                ],),
                    SizedBox(height: 10,),
                Row(children: [
                  Text(
                      "Tax",
                      style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.w400,
                          fontSize: 22)),
                  Spacer(),
                  Text(
                      "\$6.50",
                      style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.w400,
                          fontSize: 22)),
                ],),
                    SizedBox(height: 10,),
                Row(children: [
                  Text(
                      "Delivery Price",
                      style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.w400,
                          fontSize: 22)),
                  Spacer(),
                  Text(
                      "\$10.00",
                      style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.w400,
                          fontSize: 22)),
                ],),
                    SizedBox(height: 10,),
                Container(color: Colors.black12,width: double.infinity,height: 1.5,),
                    SizedBox(height: 10,),
                Row(children: [
                  Text(
                      "Total:",
                      style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.bold,
                          fontSize: 22)),
                  Spacer(),
                  Text(
                      "\$164.50",
                      style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.bold,
                          fontSize: 22)),
                ],)
              ]),
            ),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(

              decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(20.0)),color:Colors.deepOrangeAccent),

              margin: EdgeInsets.only(right: 9,left: 9,bottom: 40),
              width: double.infinity,

              child: TextButton(
                  onPressed: (){Navigator.push(context,
    MaterialPageRoute(builder: (context) =>trackScreen ()));

                  }, child: Text("CheckOut \$164.50",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:26.0,),)),
            ),
          ),
        ]),
      ),

    );
  }
}
