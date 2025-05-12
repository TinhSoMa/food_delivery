import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String priceOld;
  final String priceNew;
  final int quantity;
  final VoidCallback? onIncrease;
  final VoidCallback? onDecrease;

  const CartItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.priceOld,
    required this.priceNew,
    required this.quantity,
    this.onIncrease,
    this.onDecrease,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color(0x190D0A2C),
            blurRadius: 20,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imageUrl,
              width: 75,
              height: 75,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),

          // Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF0D1217),
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      priceOld,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF989DA3),
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      priceNew,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFF6347),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                // Quantity row
                Row(
                  children: [
                    _qtyButton(Icons.remove, onTap: onDecrease),
                    const SizedBox(width: 8),
                    Text(
                      '$quantity',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xFF0D1217),
                      ),
                    ),
                    const SizedBox(width: 8),
                    _qtyButton(Icons.add, onTap: onIncrease),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _qtyButton(IconData icon, {VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFE9EAEB)),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: 16, color: Colors.black87),
      ),
    );
  }
}
