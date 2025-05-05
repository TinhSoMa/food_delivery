import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/page/delivery/delivery_page.dart';
import 'package:food_delivery/utils/color.dart';

import '../../utils/dimension.dart';
import 'main_food_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Dimension.init(context);
    });
  }

  int _selectedIndex = 0;
  List pages = [
    const MainFoodPage(),
    // const DeliveryPage(),
    Text("1231231"),
    Text("1231231"),
    Text("1231231"),
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
