import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/color.dart';
import 'package:food_delivery/utils/dimension.dart';

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
                  Icon(Icons.location_on, color: Colors.white),
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
                        Icon(Icons.search, color: AppColors.textPrimary),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Bún đậu xì dầu...",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                      height: Dimension.height10*10,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Container(
                            width: Dimension.width10*10,
                            margin: EdgeInsets.only(right: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: Dimension.height10* 4,
                                  width: Dimension.width10* 4,
                                  color: Colors.blue,
                                ),
                                SizedBox(height: Dimension.width10/4),
                                Container(
                                  height: Dimension.height10* 4,
                                  width: Dimension.width10* 4,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    )
                ],
              ),
            ),
          ],
        )
    );
  }
}
