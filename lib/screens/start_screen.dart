import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:p17_jp_app/screens/main_screen.dart';
import 'package:p17_jp_app/widgets/order_now_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

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
          Positioned(
            top: 200,
            left: 30,
            child:
                Image(image: AssetImage("assets/graphics/cupcake_chick.png")),
          ),
          Positioned(
              bottom: 105,
              child: Image.asset("assets/details/snack_snack.png")),
          OrderNowCard()
        ],
      ),
    );
  }
}

class OrderNowCard extends StatelessWidget {
  const OrderNowCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                border: Border.all(color: Colors.white, width: 0.1)),
            width: 360,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    "Feeling Snackish Today?",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Text(
                    "Explore Angi's most popular snack selection and get instantly happy.",
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  OrderNowButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
