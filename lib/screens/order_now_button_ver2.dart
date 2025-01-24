import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:p17_jp_app/screens/main_screen.dart';

class OrderNowButtonVer2 extends StatelessWidget {
  const OrderNowButtonVer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(15),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const MainScreen()));
        },
        child: Container(
          width: 200,
          height: 60,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 157, 87, 135),
                  blurRadius: 16,
                  spreadRadius: 1,
                  offset: Offset(0, 4))
            ],
            border: Border(
              top: BorderSide(
                color: const Color.fromARGB(255, 237, 169, 248),
                width: 1.5,
              ),
            ),
            borderRadius: BorderRadius.circular(15),
            gradient: RadialGradient(
              colors: [Color(0xFFF69eA3), Color(0xFFE970C4)],
              center: Alignment(0.6, -0.5),
              radius: 2.2,
            ),
          ),
          child: Center(
            child: Text(
              "Order Now",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
