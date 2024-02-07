import 'package:flutter/material.dart';
import 'package:foodi/utils/colors.dart';

class HFoodCard extends StatelessWidget {
  const HFoodCard({
    super.key,
    required this.name,
    required this.type,
    required this.imgPath,
    required this.price,
    required this.detail,
    required this.onTap,
  });

  final String name;
  final String type;
  final String imgPath;
  final String price;
  final String detail;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
                    width: 140,
                    height: 125,
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
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 18,
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "\$${price.toString()}",
                      style: const TextStyle(
                        color: primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(height: 20),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
