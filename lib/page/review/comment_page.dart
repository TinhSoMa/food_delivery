import 'package:flutter/material.dart';
import 'package:food_delivery/base/evaluate_filter.dart';
import 'package:food_delivery/page/review/review_item.dart';
import 'package:food_delivery/utils/color.dart';

import '../../utils/dimension.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({super.key});

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  @override
  Widget build(BuildContext context) {
    double getPercentage(int rating) {
      switch (rating) {
        case 5:
          return 0.7;
        case 4:
          return 0.5;
        case 3:
          return 0.2;
        case 2:
          return 0.05;
        case 1:
          return 0.03;
        default:
          return 0.0;
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Đánh giá"),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.buttonBackgroundColor,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.only(left: Dimension.width20),
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Colors.white,
            size: Dimension.iconSize24 + 6,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(

        child: Padding(
          padding: EdgeInsets.all(Dimension.width10),
          child: Column(
            children: [
              Row(
                children: [
                  // Tổng điểm trung bình
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        '4.9',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0D1217),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(
                          5,
                              (index) => const Icon(Icons.star, color: Colors.amber, size: 16),
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        '(1.205 đánh giá)',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF697079),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  // Biểu đồ thanh đánh giá
                  Expanded(
                    child: Column(
                      children: List.generate(5, (index) {
                        final rating = 5 - index;
                        final percent = getPercentage(rating);
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 18,
                                child: Text(
                                  rating.toString(),
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ),
                              const SizedBox(width: 6),
                              Expanded(
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 8,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFE9EAEB),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                    FractionallySizedBox(
                                      widthFactor: percent,
                                      child: Container(
                                        height: 8,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [AppColors.primary, AppColors.yellowColor],
                                          ),
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Dimension.height10*2,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: const [
                    EvaluateFilter(label: 'All', isActive: true),
                    EvaluateFilter(label: 'Tích cực'),
                    EvaluateFilter(label: 'Tiêu cực'),
                    EvaluateFilter(label: '5 ⭐'),
                    EvaluateFilter(label: '4 ⭐'),
                    EvaluateFilter(label: '3 ⭐'),
                    EvaluateFilter(label: '2 ⭐'),
                    EvaluateFilter(label: '1 ⭐'),
                  ],
                ),
              ),
              SizedBox(height: Dimension.height10*3,),
              Padding(
                padding: EdgeInsets.only(left: Dimension.width10, right: Dimension.width10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      ReviewItem(
                        avatarUrl: 'assets/images/2.jpg',
                        userName: 'John Biden',
                        date: '29/03/2024',
                        comment:
                        'Quán này đỉnh vl.',
                        rating: 5,
                      ),
                      ReviewItem(
                        avatarUrl: 'assets/images/2.jpg',
                        userName: 'Mark Zuckerberg',
                        date: '29/03/2024',
                        comment:
                        'Nấu ăn như cho cc ăn.',
                        rating: 1,
                      ),

                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

}
