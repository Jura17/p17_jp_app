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
          label: Icon(Icons.remove),
          style: ElevatedButton.styleFrom(shape: CircleBorder()),
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
          label: Icon(Icons.add),
          style: ElevatedButton.styleFrom(shape: CircleBorder()),
        ),
      ],
    );
  }
}
