import 'package:flutter/material.dart';

class OrderAmountButton extends StatefulWidget {
  const OrderAmountButton({super.key});

  @override
  State<OrderAmountButton> createState() => _OrderAmountButtonState();
}

class _OrderAmountButtonState extends State<OrderAmountButton> {
  int amount = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton.icon(
          onPressed: () {
            setState(() {
              if (amount > 0) amount--;
            });
          },
          label: Icon(
            size: 20,
            Icons.remove,
            color: Colors.white,
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 53, 53, 53),
            shape: CircleBorder(
              side: BorderSide(color: const Color.fromARGB(116, 255, 255, 255)),
            ),
          ),
        ),
        Text(
          amount.toString(),
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
        ),
        ElevatedButton.icon(
          onPressed: () {
            setState(() {
              if (amount < 20) amount++;
            });
          },
          label: Icon(
            size: 20,
            Icons.add,
            color: Colors.white,
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 53, 53, 53),
            shape: CircleBorder(
              side: BorderSide(color: const Color.fromARGB(116, 255, 255, 255)),
            ),
          ),
        ),
      ],
    );
  }
}
