import 'package:flutter/material.dart';
import 'package:food_delivery/base/icon_text.dart';
import 'package:food_delivery/utils/dimension.dart';

import '../utils/color.dart';

class FoodItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String distance;
  final String time;
  final List<String>? tags; // cho phép null hoặc rỗng

  const FoodItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.distance,
    required this.time,
    this.tags,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
              width: Dimension.width10 * 10,
              height: Dimension.height10 * 10,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Color(0xFF6A6A6A),
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    IconText(icon: Icons.location_on, text: distance),
                    const SizedBox(width: 10),
                    IconText(icon: Icons.access_time, text: time),
                  ],
                ),
                if (tags != null && tags!.isNotEmpty) ...[
                  const SizedBox(height: 6),
                  Wrap(
                    spacing: 6,
                    runSpacing: -4,
                    children:
                        tags!
                            .map(
                              (tag) => Chip(
                                label: Text(tag),
                                backgroundColor:
                                    AppColors.buttonBackgroundColor,
                                labelStyle: TextStyle(
                                  fontSize: Dimension.font10,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.yellowColor,
                                ),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                visualDensity: VisualDensity.compact,
                              ),
                            )
                            .toList(),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
