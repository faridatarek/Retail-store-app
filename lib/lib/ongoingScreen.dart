import 'package:flutter/material.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

class ongoingScreen extends StatelessWidget {
  const ongoingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              height: 35,
              child: Row(
                children: [
                  Icon(Icons.date_range,color: Colors.brown,)
                  , Text("October 28,2022",style: TextStyle(color: Colors.brown,
                      fontWeight: FontWeight.bold,fontSize:22),),
                  Spacer(),Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text("8:37 Pm",style: TextStyle(color: Colors.deepOrange,
                        fontWeight: FontWeight.w600,fontSize:18),),
                  ),

                ],
              ),
            ),
          )

          ,Expanded(
            child: Timeline(
              children: <TimelineModel>[
                TimelineModel(
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
                    height: 150,
                    child:Row(
                      children: [
                        Image.asset(height: 80,width: 80,"assets/images/take.png"),
                        Container(
                          width: 170,
                          child: Text(maxLines: 3,overflow:TextOverflow.ellipsis ,"We are packin your items...",
                            style: TextStyle(color: Colors.brown,
                              fontWeight: FontWeight.w400,fontSize:20),),
                        )

                      ],
                    ),
                  ),
                  icon: Icon(Icons.check, color: Colors.white),
                  iconBackground: Colors.green,
                ),
                TimelineModel(
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
                    height: 150,
                    child:Row(
                      children: [
                        Image.asset(height: 80,width: 80,"assets/images/deliverg.png"),
                        Expanded(

                          child: Text(maxLines:3,overflow:TextOverflow.ellipsis ,"Your order is delivering to your location...",
                            style: TextStyle(color: Colors.brown,
                              fontWeight: FontWeight.w400,fontSize:22),),
                        )

                      ],
                    ),
                  ),
                  icon: Icon(Icons.check, color: Colors.white),
                  iconBackground: Colors.green,
                ),
                TimelineModel(
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
                    height: 150,
                    child:Row(
                      children: [
                        Image.asset(height: 80,width: 80,"assets/images/deliverd.png"),
                        Expanded(

                          child: Text(maxLines:2,overflow:TextOverflow.ellipsis ,"Your order is received.",
                            style: TextStyle(color: Colors.brown,
                                fontWeight: FontWeight.w400,fontSize:22),),
                        )

                      ],
                    ),
                  ),
                  icon: Icon(Icons.circle, color: Colors.white),
                  iconBackground: Colors.brown,
                ),
              ],
              position: TimelinePosition.Left,
              iconSize:10,
              lineColor: Colors.grey,


            ),
          ),
        ],
      ) //TimelinePage(title: 'Muslim Civilisation Doodles'),

    );
  }
}
