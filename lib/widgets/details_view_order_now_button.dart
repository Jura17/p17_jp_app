import 'package:flutter/material.dart';

class DetailsViewOrderNowButton extends StatelessWidget {
  const DetailsViewOrderNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
          minimumSize: Size(double.infinity, 50),
          backgroundColor: Colors.pink,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 32.0, right: 32.0),
        child: Text("Order Now"),
      ),
    );
  }
}
