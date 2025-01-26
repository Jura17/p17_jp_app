import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:p17_jp_app/widgets/buttons/order_now_button.dart';

class StartScreenCard extends StatelessWidget {
  const StartScreenCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            border: Border.all(color: Colors.white, width: 0.1),
          ),
          width: 360,
          height: 220,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              spacing: 5,
              children: [
                Text(
                  "Feeling Snackish Today?",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      letterSpacing: -1.0,
                      fontSize: 25),
                ),
                Text(
                  "Explore Angi's most popular snack selection and get instantly happy.",
                  style: TextStyle(color: Color.fromARGB(255, 191, 191, 191)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 25,
                ),
                OrderNowButton(
                  buttonWidth: 200,
                  buttonText: "Order now",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
