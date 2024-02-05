import 'package:flutter/material.dart';
import 'package:foodi/utils/colors.dart';

class VFoodCard extends StatelessWidget {
  const VFoodCard({
    super.key,
    required this.name,
    required this.type,
    required this.imgPath,
    required this.price,
    required this.detail,
  });

  final String name;
  final String type;
  final String imgPath;
  final String price;
  final String detail;

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
              imgPath,
              fit: BoxFit.cover,
              width: 175,
              height: 150,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            type,
            style: const TextStyle(
              color: lightGreyColor,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${price.toString()}\$",
                style: const TextStyle(
                  color: primaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
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
