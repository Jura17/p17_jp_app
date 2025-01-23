import 'package:flutter/material.dart';

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
    return Container(
      width: double.infinity,
      height: 350,
      decoration: BoxDecoration(
        color: Colors.black87,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              spacing: 8,
              children: [
                Expanded(
                  child: Text(""),
                ),
                Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
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
            Text(
              "\$$price",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Ingredients",
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                    Row(
                      children: [
                        Icon(
                          Icons.trip_origin,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.trip_origin,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.trip_origin,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.trip_origin,
                          color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Text("Reviews",
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.star_border_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(rating.toString(),
                            style: TextStyle(color: Colors.white, fontSize: 16))
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
