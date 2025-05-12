import 'package:flutter/material.dart';
import 'package:food_delivery/base/food_item.dart';
import 'package:food_delivery/base/section_title.dart';
import 'package:food_delivery/page/home/list_food_best_seller.dart';
import 'package:food_delivery/page/home/list_food_row.dart';
import 'package:food_delivery/page/home/list_restaurent.dart';
import 'package:food_delivery/utils/color.dart';
import 'package:food_delivery/utils/dimension.dart';

import '../../base/restaurant_item.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  static double screenHeight = Dimension.screenHeight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Text("Địa chỉ:", style: TextStyle(fontSize: 20, color: Colors.white),),
                  Icon(Icons.search_outlined, color: Colors.white),
                  SizedBox(width: 5),
                  Text(
                    // "Địa chỉ: 123 Đường ABC, Quận 1, TP.HCM",
                    "$screenHeight",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              )

              // SizedBox(width: 5),
              // Text("Địa chỉ: ", style: TextStyle(fontSize: 20, color: Colors.white),),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: AppColors.primary, size: Dimension.iconSize24,),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                fontSize: Dimension.font16,
                                color: AppColors.primary,
                                // backgroundColor: AppColors.primary
                              ),
                              decoration: InputDecoration(
                                // iconColor: AppColors.primary,
                                hintText: "Bún đậu xì dầu...",
                                hintStyle: TextStyle(color: AppColors.primary),
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.only(left: Dimension.height10, right: Dimension.width10),
                      child: Column(
                        children: [
                          SectionTitle(
                            title: 'Nhà hàng',
                            actionText: 'All',
                            colorText: AppColors.textPrimary,
                            onActionTap: () {
                            },
                          ),
                          ListRestaurent(),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.only(left: Dimension.height10, right: Dimension.width10),
                      child: SectionTitle(title: 'Danh sách bán chạy', colorText: AppColors.textPrimary,),
                    ),
                    SizedBox(height: Dimension.height10,),
                    ListFoodBestSeller(),
                    SizedBox(height: Dimension.height10,),
                    ListFoodRow(),
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}
