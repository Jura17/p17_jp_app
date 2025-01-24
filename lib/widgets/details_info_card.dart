import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:p17_jp_app/widgets/rating_star.dart';

class DetailsInfoCard extends StatelessWidget {
  final String dishTitle;
  final String imageURL;
  final double price;
  final int noOflikes;
  final double rating;

  const DetailsInfoCard(
      {required this.dishTitle,
      required this.imageURL,
      required this.price,
      required this.noOflikes,
      required this.rating,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          width: double.infinity,
          height: 350,
          decoration: BoxDecoration(
            color: const Color.fromARGB(149, 42, 42, 42),
            border: Border.all(
                color: const Color.fromARGB(168, 255, 255, 255), width: 0.5),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  spacing: 8,
                  children: [
                    Spacer(),
                    SvgPicture.asset(
                      "assets/icons/heart_empty.svg",
                      height: 15,
                      width: 15,
                    ),
                    Text(
                      noOflikes.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Text(
                  dishTitle,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Text(
                  "Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 5,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/currency.svg",
                      height: 15,
                      width: 15,
                    ),
                    Text(
                      "$price",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10,
                      children: [
                        Text("Ingredients",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                        Row(
                          spacing: 5,
                          children: [
                            SvgPicture.asset(
                              "assets/icons/lunch.svg",
                              height: 20,
                              width: 20,
                            ),
                            SvgPicture.asset(
                              "assets/icons/lunch.svg",
                              height: 20,
                              width: 20,
                            ),
                            SvgPicture.asset(
                              "assets/icons/lunch.svg",
                              height: 20,
                              width: 20,
                            ),
                            SvgPicture.asset(
                              "assets/icons/lunch.svg",
                              height: 20,
                              width: 20,
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Reviews",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Row(
                          spacing: 5,
                          children: [
                            SvgPicture.asset(
                              "assets/icons/star_filled.svg",
                              height: 15,
                              width: 15,
                            ),
                            SvgPicture.asset(
                              "assets/icons/star_filled.svg",
                              height: 15,
                              width: 15,
                            ),
                            SvgPicture.asset(
                              "assets/icons/star_filled.svg",
                              height: 15,
                              width: 15,
                            ),
                            SvgPicture.asset(
                              "assets/icons/star_filled.svg",
                              height: 15,
                              width: 15,
                            ),
                            SvgPicture.asset(
                              "assets/icons/star_empty.svg",
                              height: 15,
                              width: 15,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(rating.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16))
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
