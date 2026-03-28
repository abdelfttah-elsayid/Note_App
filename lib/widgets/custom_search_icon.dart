import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    required this.icon,
     required this.onPressed, // ضفنا دي
    this.color,     // ضفنا دي
    super.key
  });

  final IconData icon;
  final void Function()? onPressed; // وظيفة الضغط
  final Color? color; // لون اختياري

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: IconButton( // استخدمنا IconButton عشان الـ onTap
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: color ?? Colors.white, // لو مبعتش لون هيستخدم الأبيض
            size: 28,
          ),
        ),
      ),
    );
  }
}