import 'package:flutter/material.dart';
import 'package:foodi/utils/colors.dart';

class NumberSelecter extends StatefulWidget {
  const NumberSelecter({super.key});

  @override
  State<NumberSelecter> createState() => _NumberSelecterState();
}

class _NumberSelecterState extends State<NumberSelecter> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        children: [
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              setState(() {
                if (number != 1) {
                  number -= 1;
                }
              });
            },
            icon: const Icon(
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
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              setState(() {
                number += 1;
              });
            },
            icon: const Icon(
              Icons.add,
              color: whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
