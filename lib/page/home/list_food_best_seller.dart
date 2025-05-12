import 'package:flutter/cupertino.dart';

import '../../base/food_item.dart';
import '../../utils/dimension.dart';

class ListFoodBestSeller extends StatelessWidget {
  const ListFoodBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: Dimension.height10, right: Dimension.width10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FoodItem(
              imagePath: 'assets/images/1.jpg',
              title: 'Phở bò tái',
              description: 'Nước dùng đậm đà, thơm mùi gừng nướng',
              distance: '1.5 km',
              time: '15 phút',
              tags: ['Phở', 'Sáng', 'Dinh dưỡng'],
            ),
            SizedBox(height: Dimension.height10,),
            FoodItem(
              imagePath: 'assets/images/1.jpg',
              title: 'Phở bò tái',
              description: 'Nước dùng đậm đà, thơm mùi gừng nướng',
              distance: '1.5 km',
              time: '15 phút',
              tags: ['Phở', 'Sáng', 'Dinh dưỡng'],
            ),
            SizedBox(height: Dimension.height10,),
            FoodItem(
              imagePath: 'assets/images/1.jpg',
              title: 'Phở bò tái',
              description: 'Nước dùng đậm đà, thơm mùi gừng nướng',
              distance: '1.5 km',
              time: '15 phút',
              tags: ['Phở', 'Sáng', 'Dinh dưỡng'],
            ),
            SizedBox(height: Dimension.height10,),
            FoodItem(
              imagePath: 'assets/images/1.jpg',
              title: 'Phở bò tái',
              description: 'Nước dùng đậm đà, thơm mùi gừng nướng',
              distance: '1.5 km',
              time: '15 phút',
              tags: ['Phở', 'Sáng', 'Dinh dưỡng'],
            ),
            SizedBox(height: Dimension.height10,),
            FoodItem(
              imagePath: 'assets/images/1.jpg',
              title: 'Phở bò tái',
              description: 'Nước dùng đậm đà, thơm mùi gừng nướng',
              distance: '1.5 km',
              time: '15 phút',
              tags: ['Phở', 'Sáng', 'Dinh dưỡng'],
            ),
          ],
        ),
      ),
    );
  }
}
