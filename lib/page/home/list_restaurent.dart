import 'package:flutter/cupertino.dart';

import '../../base/restaurant_item.dart';
import '../../utils/dimension.dart';

class ListRestaurent extends StatelessWidget {
  const ListRestaurent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          RestaurantItem(
            name: 'KFC',
            imageUrl: 'assets/banners/b1.jfif',
            rating: 4.5,
          ),
          SizedBox(width: Dimension.width10),
          RestaurantItem(
            name: 'Bún đậu mắm tôm',
            imageUrl: 'assets/images/1.jpg',
            rating: 4.5,
          ),
          SizedBox(width: Dimension.width10),
          RestaurantItem(
            name: 'Bún đậu mắm tôm',
            imageUrl: 'assets/images/1.jpg',
            rating: 4.5,
          ),
          SizedBox(width: Dimension.width10),
          RestaurantItem(
            name: 'Bún đậu mắm tôm',
            imageUrl: 'assets/images/1.jpg',
            rating: 4.5,
          ),
          SizedBox(width: Dimension.width10),
          RestaurantItem(
            name: 'Bún đậu mắm tôm',
            imageUrl: 'assets/images/1.jpg',
            rating: 4.5,
          ),
        ],
      ),
    );
  }
}
