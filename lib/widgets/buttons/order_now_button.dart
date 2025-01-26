import 'package:flutter/material.dart';
import 'package:p17_jp_app/screens/main_screen.dart';

class OrderNowButton extends StatelessWidget {
  final String buttonText;
  final double buttonWidth;
  const OrderNowButton(
      {super.key, required this.buttonText, required this.buttonWidth});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const MainScreen()));
      },
      child: Container(
        width: buttonWidth,
        height: 50,
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
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const MainScreen()));
          },
          child: Text(
            buttonText,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
