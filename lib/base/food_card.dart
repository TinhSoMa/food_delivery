import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String oldPrice;
  final String newPrice;
  final double rating;

  const FoodCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.oldPrice,
    required this.newPrice,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0F0D0A2C),
            blurRadius: 6,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imageUrl,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF0D1217),
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              const Icon(Icons.star, size: 14, color: Colors.amber),
              const SizedBox(width: 4),
              Text(
                rating.toStringAsFixed(1),
                style: const TextStyle(fontSize: 11),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                oldPrice,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFF989DA3),
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                newPrice,
                style: const TextStyle(
                  fontSize: 13,
                  color: Color(0xFFFF6347),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
