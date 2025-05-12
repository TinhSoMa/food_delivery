import 'package:flutter/material.dart';
import 'package:food_delivery/page/card/card_page.dart';
import 'package:food_delivery/page/food/food_detail_page.dart';
import 'package:food_delivery/page/review/comment_page.dart';
import 'package:food_delivery/utils/color.dart';

import 'main_food_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  int _selectedIndex = 0;
  List pages = [
    const MainFoodPage(),
    const FoodDetailPage(),
    CommentPage(),
    CardPage(),
  ];

  void onTapNav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.iconColor1,
          showSelectedLabels: false,
          showUnselectedLabels: true,
          onTap: onTapNav,
          currentIndex: _selectedIndex,
          selectedFontSize: 0.0,
          unselectedFontSize: 0.0,
          items: const [
            BottomNavigationBarItem(
                label: "home",
                backgroundColor: Colors.white,
                icon: Icon(Icons.home_outlined)
            ),
            BottomNavigationBarItem(
                label: "order",
                backgroundColor: Colors.white,
                icon: Icon(Icons.shopping_cart_outlined)
            ),
            BottomNavigationBarItem(
                label: "order",
                backgroundColor: Colors.white,
                icon: Icon(Icons.shopping_cart_outlined)
            ),
            BottomNavigationBarItem(
                label: "order",
                backgroundColor: Colors.white,
                icon: Icon(Icons.shopping_cart_outlined)
            ),
          ]
      ),

    );
  }
}
