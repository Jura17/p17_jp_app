import 'package:flutter/material.dart';

class SelectedSnack extends StatelessWidget {
  final String dishTitle;
  final String dishDescription;
  final String imageURL;
  final double price;
  final double rating;

  const SelectedSnack({
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
      width: 350,
      child: Stack(
        children: [
          Image(image: AssetImage("assets/details/cut_card.png")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
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
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "\$$price",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    FilledButton(
                      style: FilledButton.styleFrom(
                          backgroundColor: Colors.pink,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {},
                      child: Text("Add to order"),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.pink,
                    ),
                    Text(
                      rating.toString(),
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned(
            width: 200,
            top: 50,
            left: 150,
            child: Image(
              image: AssetImage(imageURL),
            ),
          )
        ],
      ),
    );
  }
}
