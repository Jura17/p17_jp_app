import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:p17_jp_app/widgets/details_info_card.dart';
import 'package:p17_jp_app/widgets/details_view_order_now_button.dart';
import 'package:p17_jp_app/widgets/order_amount_button.dart';
import 'package:p17_jp_app/widgets/order_now_button.dart';
import 'package:p17_jp_app/widgets/order_size_segment_button.dart';

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
                Row(
                  children: [
                    Spacer(),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      label: SvgPicture.asset(
                        "assets/icons/cancel.svg",
                        height: 15,
                        width: 15,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 53, 53, 53),
                        shape: CircleBorder(
                          side: BorderSide(
                              color: const Color.fromARGB(116, 255, 255, 255)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 150,
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
                  height: 50,
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
                OrderNowButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
