
import 'package:cis_app/lib/HistoryScreen.dart';
import 'package:cis_app/lib/ongoingScreen.dart';

import 'package:flutter/material.dart';
import 'package:scroll_navigation/misc/navigation_helpers.dart';
import 'package:scroll_navigation/misc/screen.dart';
import 'package:scroll_navigation/navigation/title_scroll_navigation.dart';
class TitleScrollScreen extends StatefulWidget {
  TitleScrollScreen({Key? key}) : super(key: key);

  @override
  _TitleScrollScreenState createState() => _TitleScrollScreenState();
}

class _TitleScrollScreenState extends State<TitleScrollScreen> {
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Screen(
          appBar: AppBar(toolbarHeight:80,title:Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text("Orders",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30),),
          )),
          controllerToHideAppBar: controller,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TitleScrollNavigation(
              barStyle: TitleNavigationBarStyle(
                activeColor: Colors.deepOrange,deactiveColor: Colors.brown,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize:22),
                padding: EdgeInsets.symmetric(horizontal:30.0, vertical: 20.0),
                spaceBetween: 150,
              ),
              titles: [
                "Ongoing",
                "History",

              ],
              pages: [


                ongoingScreen(),
                historyScreen(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
