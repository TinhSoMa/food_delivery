import 'package:flutter/material.dart';

class ReviewItem extends StatelessWidget {
  final String avatarUrl;
  final String userName;
  final String date;
  final String comment;
  final int rating; // 1–5 sao

  const ReviewItem({
    super.key,
    required this.avatarUrl,
    required this.userName,
    required this.date,
    required this.comment,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Avatar
            ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Image.asset(
                avatarUrl,
                width: 48,
                height: 48,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            // Tên + ngày
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF0D1217),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    date,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF989DA3),
                    ),
                  ),
                ],
              ),
            ),
            // Số sao
            Row(
              children: List.generate(5, (index) {
                return Icon(
                  Icons.star,
                  size: 14,
                  color: index < rating ? Colors.amber : Colors.grey[300],
                );
              }),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          comment,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
            height: 1.5,
            color: Color(0xFF0D1217),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
