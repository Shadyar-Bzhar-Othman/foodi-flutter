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
      padding: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
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
          const SizedBox(width: 5),
          Text(
            number.toString(),
            style: const TextStyle(
              color: whiteColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 5),
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
