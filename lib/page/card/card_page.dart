import 'package:flutter/material.dart';
import 'package:food_delivery/utils/color.dart';

import 'cart_item.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Giỏ hàng"),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: CartItem(
          imageUrl: 'assets/images/4.jpg',
          title: 'Nước đái bò',
          priceOld: '100000',
          priceNew: '1000',
          quantity: 1,
          onIncrease: () => print('tăng'),
          onDecrease: () => print('giảm'),
        ),

      )
    );
  }
}
