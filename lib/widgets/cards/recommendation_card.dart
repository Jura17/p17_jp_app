import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:p17_jp_app/screens/details_modal_bottom_sheet.dart';

class RecommendationCard extends StatelessWidget {
  final String imageURL;
  final String dishTitle;
  final String dishDescription;
  final double price;
  final double rating;
  final int noOflikes;

  const RecommendationCard({
    required this.imageURL,
    required this.dishTitle,
    required this.dishDescription,
    required this.price,
    required this.rating,
    required this.noOflikes,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return DetailsModalBottomSheet(
                dishTitle: dishTitle,
                imageURL: imageURL,
                price: price,
                noOflikes: noOflikes,
                rating: rating);
          }),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            width: 220,
            height: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment(0, 1),
                  colors: <Color>[
                    Color(0x33ffffff),
                    Color(0x99908cf5),
                    Color(0xff8c5bea),
                  ]),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.white),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(image: AssetImage(imageURL)),
                  Text(
                    dishTitle,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Text(
                    dishDescription,
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
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
                                fontSize: 15),
                          ),
                        ],
                      ),
                      Row(
                        spacing: 5,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/heart_empty.svg",
                            height: 15,
                            width: 15,
                          ),
                          Text(
                            noOflikes.toString(),
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
