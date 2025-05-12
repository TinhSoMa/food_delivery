import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String? actionText;
  final IconData? actionIcon;
  final VoidCallback? onActionTap;
  final Color colorText;

  const SectionTitle({
    super.key,
    required this.title,
    this.actionText,
    this.actionIcon,
    this.onActionTap,
    this.colorText = const Color(0xFF191919),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: colorText,
              ),
            ),
          ),
          if (actionText != null && onActionTap != null)
            TextButton.icon(
              onPressed: onActionTap,
              icon: Icon(
                actionIcon ?? Icons.arrow_forward_ios_rounded,
                size: 14,
                color: const Color(0xFFFF792E),
              ),
              label: Text(
                actionText!,
                style: const TextStyle(
                  color: Color(0xFFFF792E),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                visualDensity: VisualDensity.compact,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
        ],
      ),
    );
  }
}
