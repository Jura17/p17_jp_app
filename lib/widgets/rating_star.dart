import 'package:flutter/material.dart';

class RatingStar extends StatefulWidget {
  const RatingStar({
    super.key,
  });

  @override
  State<RatingStar> createState() => _RatingStarState();
}

class _RatingStarState extends State<RatingStar> {
  bool filled = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        filled = !filled;
      }),
      child: Icon(
        filled ? Icons.star : Icons.star_border_outlined,
        color: Colors.white,
      ),
    );
  }
}
