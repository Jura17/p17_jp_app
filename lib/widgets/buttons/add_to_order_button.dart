import 'package:flutter/material.dart';

class AddToOrderButton extends StatelessWidget {
  const AddToOrderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 145,
        height: 55,
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
            colors: [Color(0xFF908CF5), Color(0xFFBB8DE1)],
            center: Alignment(0.9, 0.5),
            radius: 1.5,
          ),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          onPressed: () {},
          child: Text(
            "Add to order",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
