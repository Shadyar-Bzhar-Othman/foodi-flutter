import 'package:flutter/material.dart';
import 'package:foodi/utils/assets.dart';
import 'package:foodi/utils/colors.dart';

class VFoodCard extends StatelessWidget {
  const VFoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: whiteColor,
        boxShadow: boxShadow,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              pizza1,
              fit: BoxFit.cover,
              width: 175,
              height: 150,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            "Pizza 1",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Chicken",
            style: TextStyle(
              color: lightGreyColor,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "14\$",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: 100),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  size: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
