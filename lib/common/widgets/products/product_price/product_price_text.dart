import 'package:flutter/material.dart';

class TProductPriceText extends StatelessWidget {
  const TProductPriceText({
    super.key,
    this.currencySign = '\$',
    required this.price,
    this.isLarge = false,
    this.maxLines = 1,
    this.lineThrough = false,
    this.color, // Optional custom color
  });

  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Text(
      '$currencySign$price',
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: (isLarge
              ? Theme.of(context).textTheme.headlineMedium
              : Theme.of(context).textTheme.titleLarge)
          ?.copyWith(
        color: color ?? (isDark ? Colors.white : Colors.black),
        decoration: lineThrough ? TextDecoration.lineThrough : null,
      ),
    );
  }
}
