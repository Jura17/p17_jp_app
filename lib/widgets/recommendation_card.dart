import 'package:flutter/material.dart';
import 'package:p17_jp_app/widgets/details_info_card.dart';
import 'package:p17_jp_app/widgets/details_view_order_now_button.dart';
import 'package:p17_jp_app/widgets/order_amount_button.dart';
import 'package:p17_jp_app/widgets/order_size_segment_button.dart';

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
                  Text(
                    "\$$price",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Row(
                    spacing: 5,
                    children: [
                      Icon(
                        Icons.favorite_border,
                        color: Colors.grey[400],
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
    );
  }
}

class DetailsModalBottomSheet extends StatefulWidget {
  final String dishTitle;
  final String imageURL;
  final double price;
  final int noOflikes;
  final double rating;

  const DetailsModalBottomSheet({
    required this.dishTitle,
    required this.imageURL,
    required this.price,
    required this.noOflikes,
    required this.rating,
    super.key,
  });

  @override
  State<DetailsModalBottomSheet> createState() =>
      _DetailsModalBottomSheetState();
}

class _DetailsModalBottomSheetState extends State<DetailsModalBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.88,
      child: Container(
        color: Color.fromRGBO(44, 44, 44, 1),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: OverflowBox(
                    minHeight: 400,
                    maxHeight: 400,
                    child: Image(image: AssetImage(widget.imageURL)),
                  ),
                ),
                DetailsInfoCard(
                    dishTitle: widget.dishTitle,
                    imageURL: widget.imageURL,
                    price: widget.price,
                    noOflikes: widget.noOflikes,
                    rating: widget.rating),
                SizedBox(
                  height: 100,
                ),
                Row(
                  children: [
                    OrderSizeSegmentButton(),
                    Spacer(),
                    OrderAmountButton()
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                DetailsViewOrderNowButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
