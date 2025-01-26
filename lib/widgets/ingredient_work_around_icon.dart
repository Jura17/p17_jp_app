import 'package:flutter/material.dart';

class IngredientWorkAroundIcon extends StatelessWidget {
  final String imageURI;
  const IngredientWorkAroundIcon({super.key, required this.imageURI});

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
          const Color.fromARGB(149, 42, 42, 42), BlendMode.color),
      child: Image(
        width: 25,
        image: AssetImage(imageURI),
      ),
    );
  }
}
