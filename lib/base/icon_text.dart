import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  final double iconSize;
  final Color iconColor;
  final TextStyle? textStyle;

  const IconText({
    super.key,
    required this.icon,
    required this.text,
    this.iconSize = 12,
    this.iconColor = const Color(0xFF7F7F7F),
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: iconSize, color: iconColor),
        const SizedBox(width: 4),
        Text(
          text,
          style: textStyle ??
              const TextStyle(
                fontSize: 10,
                color: Color(0xFF7F7F7F),
                fontWeight: FontWeight.w400,
              ),
        ),
      ],
    );
  }
}
