import 'package:flutter/material.dart';
import 'package:foodi/utils/colors.dart';
import 'package:foodi/widgets/cart_number_selecter.dart';

class CartFoodCart extends StatelessWidget {
  const CartFoodCart({
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
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: whiteColor,
        boxShadow: boxShadow,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  imgPath,
                  fit: BoxFit.cover,
                  width: 125,
                  height: 100,
                ),
              ),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 16,
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
                  const SizedBox(height: 10),
                  Text(
                    "\$${price.toString()}",
                    style: const TextStyle(
                      color: primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const CartNumberSelecter(),
        ],
      ),
    );
  }
}
