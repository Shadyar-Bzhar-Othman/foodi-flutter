import 'package:flutter/material.dart';
import 'package:foodi/utils/colors.dart';

class CartNumberSelecter extends StatefulWidget {
  const CartNumberSelecter({super.key});

  @override
  State<CartNumberSelecter> createState() => _CartNumberSelecterState();
}

class _CartNumberSelecterState extends State<CartNumberSelecter> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                if (number != 1) {
                  number -= 1;
                }
              });
            },
            child: const Icon(
              Icons.remove,
              color: whiteColor,
            ),
          ),
          Text(
            number.toString(),
            style: const TextStyle(
              color: whiteColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                number += 1;
              });
            },
            child: const Icon(
              Icons.add,
              color: whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
