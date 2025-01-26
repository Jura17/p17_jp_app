import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 10,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: 90),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(64, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      spacing: 5,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/lunch.svg",
                          height: 15,
                          width: 15,
                        ),
                        Text(
                          "All categories",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          TopNavCategory(isSelected: true, title: "Salty"),
          TopNavCategory(isSelected: false, title: "Sweet"),
          TopNavCategory(isSelected: false, title: "Drinks")
        ],
      ),
    );
  }
}

class TopNavCategory extends StatelessWidget {
  final bool isSelected;
  final String title;

  const TopNavCategory({
    required this.isSelected,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: ConstrainedBox(
          constraints: BoxConstraints(minWidth: 90),
          child: Container(
            decoration: BoxDecoration(
              color: isSelected
                  ? Colors.white
                  : const Color.fromARGB(64, 255, 255, 255),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: isSelected ? Colors.black : Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
