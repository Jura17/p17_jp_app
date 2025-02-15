import 'package:flutter/material.dart';

import 'package:p17_jp_app/widgets/cards/recommendation_card.dart';
import 'package:p17_jp_app/widgets/cards/selected_snack_card.dart';
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
                  SelectedSnackCard(
                    dishTitle: "Angi's Yummy Burger",
                    dishDescription:
                        "Delish vegan burger\nthat tastes like heaven",
                    imageURL: "assets/graphics/burger.png",
                    price: 13.99,
                    rating: 4.8,
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
                          rating: 4.0,
                          price: 8.99,
                          noOflikes: 187,
                        ),
                        RecommendationCard(
                          imageURL: "assets/graphics/icecream_cone.png",
                          dishTitle: "Cooper's Cone",
                          dishDescription: "Choc coconut ice cream",
                          rating: 3.0,
                          price: 6.99,
                          noOflikes: 150,
                        ),
                        RecommendationCard(
                          imageURL: "assets/graphics/icecream_stick.png",
                          dishTitle: "Timmy's Classic",
                          dishDescription: "Classic chocolate vanilla",
                          rating: 4.0,
                          price: 6.99,
                          noOflikes: 170,
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
