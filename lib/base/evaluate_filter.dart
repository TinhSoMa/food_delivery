import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color.dart';

class EvaluateFilter extends StatelessWidget {
  final String label;
  final bool isActive;
  final VoidCallback? onTap;
  const EvaluateFilter({super.key, required this.label, this.isActive = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: isActive
            ? LinearGradient(
          colors: [AppColors.primary, AppColors.yellowColor],
        )
            : null,
        color: isActive ? null : const Color(0xFFE9EAEB),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isActive ? Colors.white : const Color(0xFF0D1217),
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
