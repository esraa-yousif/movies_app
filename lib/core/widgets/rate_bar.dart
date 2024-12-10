import 'package:flutter/material.dart';
import 'package:movies_app/core/widgets/image_holder.dart';

class RateBar extends StatelessWidget {
  const RateBar({
    super.key,
    required this.rate,
    required this.starSize,
  });

  final String rate;
  final double starSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageHolder(
          'assets/rate.png',
          width: starSize,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(rate),
      ],
    );
  }
}
