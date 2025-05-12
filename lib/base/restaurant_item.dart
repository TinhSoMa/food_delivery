import 'package:flutter/material.dart';

class RestaurantItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final double? rating;
  final VoidCallback? onTap;

  const RestaurantItem({
    super.key,
    required this.name,
    required this.imageUrl,
    this.rating,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipOval(
            child: Image.asset(
              imageUrl,
              width: 72,
              height: 72,
              fit: BoxFit.cover,
            ),
            // child: Image.network(
            //   imageUrl,
            //   width: 72,
            //   height: 72,
            //   fit: BoxFit.cover,
            // ),
          ),
          const SizedBox(height: 6),
          SizedBox(
            width: 80,
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFF191919),
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (rating != null) ...[
            const SizedBox(height: 4),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.star, size: 12, color: Colors.amber),
                const SizedBox(width: 2),
                Text(
                  rating!.toStringAsFixed(1),
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
