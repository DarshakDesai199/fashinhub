import 'package:fashinhub/11Profile.dart';
import 'package:fashinhub/12.Favorite.dart';
import 'package:fashinhub/13.Cart.dart';
import 'package:fashinhub/5.Home.dart';
import 'package:fashinhub/6.Categories.dart';
import 'package:flutter/material.dart';

class BottamNavBar extends StatefulWidget {
  const BottamNavBar({Key? key}) : super(key: key);

  @override
  _BottamNavBarState createState() => _BottamNavBarState();
}

class _BottamNavBarState extends State<BottamNavBar> {
  int bottomSelected = 0;
  List screen = [Home(), Categories(), Favorite(), Profile(), Cart()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomSelected,
        onTap: (value) {
          setState(() {
            bottomSelected = value;
          });
        },
        selectedItemColor: Color(0xff2D6A4F),
        selectedLabelStyle: TextStyle(
            color: Color(0xff2D6A4F),
            fontWeight: FontWeight.bold,
            fontSize: 16),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.category_outlined,
                size: 30,
              ),
              label: "Categories"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 30,
              ),
              label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 30,
              ),
              label: "Cart")
        ],
      ),
      body: screen[bottomSelected],
    );
  }
}
