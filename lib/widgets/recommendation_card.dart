import 'package:flutter/material.dart';
import 'package:p17_jp_app/widgets/details_info_card.dart';

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
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 200,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage(imageURL)),
                Text(dishTitle),
                Text(dishDescription),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$$price"),
                    Row(
                      children: [
                        Icon(Icons.favorite_border),
                        Text(
                          noOflikes.toString(),
                          style: TextStyle(fontWeight: FontWeight.bold),
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

enum OrderSize {
  small,
  medium,
  large,
}

class _DetailsModalBottomSheetState extends State<DetailsModalBottomSheet> {
  Set<OrderSize> _selected = {OrderSize.small};

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
                    SegmentedButton<OrderSize>(
                      // style: ButtonStyle(
                      //     backgroundColor: ),
                      emptySelectionAllowed: false,
                      showSelectedIcon: false,
                      multiSelectionEnabled: false,
                      segments: <ButtonSegment<OrderSize>>[
                        ButtonSegment<OrderSize>(
                            value: OrderSize.small, label: Text("Small")),
                        ButtonSegment<OrderSize>(
                            value: OrderSize.medium, label: Text("Medium")),
                        ButtonSegment<OrderSize>(
                            value: OrderSize.large, label: Text("Large")),
                      ],
                      selected: _selected,
                      onSelectionChanged: updateSelected,
                    ),
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

  void updateSelected(Set<OrderSize> newSelection) {
    setState(() {
      _selected = newSelection;
    });
  }
}

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
