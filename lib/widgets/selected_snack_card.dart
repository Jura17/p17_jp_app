import 'package:flutter/material.dart';
import 'package:p17_jp_app/widgets/add_to_order_button.dart';

class SelectedSnackCard extends StatelessWidget {
  final String dishTitle;
  final String dishDescription;
  final String imageURL;
  final double price;
  final double rating;

  const SelectedSnackCard({
    required this.dishTitle,
    required this.dishDescription,
    required this.imageURL,
    required this.price,
    required this.rating,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          Image(
            image: AssetImage("assets/details/cut_card.png"),
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dishTitle,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      dishDescription,
                      style: TextStyle(
                          color: const Color.fromARGB(255, 238, 238, 238),
                          fontSize: 15),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "\$$price",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(height: 25),
                    AddToOrderButton()
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 4,
                  children: [
                    Image.asset(
                      "assets/graphics/star.png",
                      width: 17,
                      fit: BoxFit.fill,
                    ),
                    Text(
                      rating.toString(),
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            width: 225,
            top: 55,
            left: 175,
            child: Image(
              image: AssetImage(imageURL),
            ),
          )
        ],
      ),
    );
  }
}
