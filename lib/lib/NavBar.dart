
import 'package:cis_app/lib/Account/accScreen.dart';
import 'package:cis_app/lib/CartScreen.dart';
import 'package:cis_app/lib/Category1/HomeScreen.dart';
import 'package:cis_app/lib/Favorite/FavScreen.dart';
import 'package:cis_app/lib/allCategories/allcatgScreen.dart';
import 'package:flutter/material.dart';

class NavgatorBar extends StatefulWidget {
  const NavgatorBar({Key? key}) : super(key: key);

  @override
  State<NavgatorBar> createState() => _NavgatorBarState();
}

class _NavgatorBarState extends State<NavgatorBar> {
  List<Widget> PagesName = [Category1screen(),explorCircle(),cartScreen(),favScreen(),accScreen(),accScreen(),];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.brown,
          selectedItemColor: Colors.deepOrangeAccent,
          backgroundColor: Colors.white,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home,size:30), label: "shop"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search,size:35), label: "Explor"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_rounded,size:30), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite,size:30), label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person,size:30), label: "account")
          ]),
        body: Center(child: PagesName[currentIndex])
    );
  }
}
