import 'package:flutter/material.dart';
import 'package:foodi/utils/colors.dart';

class CartDetail extends StatelessWidget {
  const CartDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: whiteColor,
        boxShadow: boxShadow,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Items",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "10",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Sub-Total",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "\$60",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Delivery",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "\$20",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total:",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "\$80",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
