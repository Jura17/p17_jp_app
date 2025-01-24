import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:p17_jp_app/widgets/start_screen_card.dart';

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
            top: 180,
            left: -20,
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/graphics/cupcake_chick.png",
              ),
              width: 600,
            ),
          ),
          Positioned(
              bottom: 34,
              child: Image(
                image: AssetImage("assets/details/snack_snack.png"),
                width: 430,
                fit: BoxFit.fill,
              )),
          Positioned(bottom: 50, child: StartScreenCard()),
        ],
      ),
    );
  }
}
