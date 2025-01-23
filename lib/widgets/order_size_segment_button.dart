import 'package:flutter/material.dart';

enum OrderSize {
  small,
  medium,
  large,
}

class OrderSizeSegmentButton extends StatefulWidget {
  const OrderSizeSegmentButton({super.key});

  @override
  State<OrderSizeSegmentButton> createState() => _OrderSizeSegmentButtonState();
}

class _OrderSizeSegmentButtonState extends State<OrderSizeSegmentButton> {
  Set<OrderSize> _selected = {OrderSize.small};

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<OrderSize>(
      style: SegmentedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 56, 56, 56),
        selectedBackgroundColor: Color.fromARGB(255, 87, 87, 87),
        selectedForegroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        side: BorderSide(color: Color.fromARGB(255, 56, 56, 56)),
      ),
      emptySelectionAllowed: false,
      showSelectedIcon: false,
      multiSelectionEnabled: false,
      segments: <ButtonSegment<OrderSize>>[
        ButtonSegment<OrderSize>(value: OrderSize.small, label: Text("Small")),
        ButtonSegment<OrderSize>(
            value: OrderSize.medium, label: Text("Medium")),
        ButtonSegment<OrderSize>(value: OrderSize.large, label: Text("Large")),
      ],
      selected: _selected,
      onSelectionChanged: updateSelected,
    );
  }

  void updateSelected(Set<OrderSize> newSelection) {
    setState(() {
      _selected = newSelection;
    });
  }
}
