import 'dart:async';

import 'package:cis_app/lib/startScreen/StartScreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
  Timer( Duration(seconds:2), () {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) =>startScreen()));((route)=>false);
  });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child:Image.asset('lib/images/img.png',)));
  }
}
