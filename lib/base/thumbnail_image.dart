import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimension.dart';

class ThumbnailImage extends StatelessWidget {
  final String imagePath;
  final VoidCallback? onTap;
  final bool isSelected;

  const ThumbnailImage({
    super.key,
    required this.imagePath,
    this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: Dimension.width20*4,
        height: Dimension.height20*2.5,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Colors.redAccent : Colors.transparent,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
      ),
    );
  }
}
