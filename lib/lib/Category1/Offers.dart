import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  const Offers ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        CarouselSlider(
            items: [
              Image.asset("assets/images/welcom.png"),
              Image.network("https://www.momentospicture.com/wp-content/uploads/2020/11/T-Final.jpg"),
              Image.network("https://dealroup.com/wp-content/uploads/2020/05/Grocery-Offers-1024x536.jpg"),
              Image.network("https://th.bing.com/th/id/OIP.PAxQ7oCRWkIlQYAptxTzeQHaFQ?pid=ImgDet&rs=1"),
              Image.network("https://offers.getsimpl.com/wp-content/uploads/2019/06/grofers-1-1-600x300.png"),
              Image.network("https://static.wixstatic.com/media/863709_91d038d0b0554eb387a5a8e322dad24c~mv2.jpg/v1/fit/w_851%2Ch_315%2Cal_c%2Cq_80/file.jpg"),
              Image.network("https://v.fastcdn.co/u/d17a9825/50688505-0-EP-LPbanner-399.jpg"),


            ]

            ,
            options: CarouselOptions(
              height:200,
              aspectRatio: 16/9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              //onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,
            )
        )
      ],
    );
  }
}
