import 'package:flutter/cupertino.dart';

import '../../base/food_card.dart';

class ListFoodRow extends StatelessWidget {

  const ListFoodRow({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> foodList = [
      {
        'title': 'Burger Gà',
        'image': 'assets/images/1.jpg',
        'priceOld': '25000',
        'priceNew': '20000',
        'rating': 4.5,
      },
      {
        'title': 'Burger Gà',
        'image': 'assets/images/1.jpg',
        'priceOld': '25000',
        'priceNew': '20000',
        'rating': 4.5,
      },{
        'title': 'Burger Gà',
        'image': 'assets/images/1.jpg',
        'priceOld': '25000',
        'priceNew': '20000',
        'rating': 4.5,
      },{
        'title': 'Burger Gà',
        'image': 'assets/images/1.jpg',
        'priceOld': '25000',
        'priceNew': '20000',
        'rating': 4.5,
      },
      {
        'title': 'Burger Gà',
        'image': 'assets/images/1.jpg',
        'priceOld': '25000',
        'priceNew': '20000',
        'rating': 4.5,
      },
    ];
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.count(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.75,
        children: foodList.map((food) {
          return FoodCard(
            title: food['title'],
            imageUrl: food['image'],
            oldPrice: food['priceOld'],
            newPrice: food['priceNew'],
            rating: food['rating'],
          );
        }).toList(),
      ),
    );
  }
}
