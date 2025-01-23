import 'package:flutter/material.dart';

import 'package:p17_jp_app/widgets/recommendation_card.dart';
import 'package:p17_jp_app/widgets/selected_snack.dart';
import 'package:p17_jp_app/widgets/top_nav_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/backgrounds/bg_mainscreen.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Choose Your Favorite Snack",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  TopNavBar(),
                  Center(
                    child: SelectedSnack(
                      dishTitle: "Angi's Yummy Burger",
                      dishDescription:
                          "Delish vegan burger\nthat tastes like heaven",
                      imageURL: "assets/graphics/burger.png",
                      price: 13.99,
                      rating: 4.8,
                    ),
                  ),
                  Text(
                    "We Recommend",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 20,
                      children: [
                        RecommendationCard(
                          imageURL: "assets/graphics/cupcake_cat.png",
                          dishTitle: "Mogli's Cup",
                          dishDescription: "Strawberry ice cream",
                          rating: 4.0,
                          price: 8.99,
                          noOflikes: 200,
                        ),
                        RecommendationCard(
                          imageURL: "assets/graphics/icecream.png",
                          dishTitle: "Balu's Cup",
                          dishDescription: "Pistachio ice cream",
                          rating: 4.5,
                          price: 8.99,
                          noOflikes: 187,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
