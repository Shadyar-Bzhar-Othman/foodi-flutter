import 'package:flutter/material.dart';
import 'package:foodi/utils/assets.dart';
import 'package:foodi/utils/colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.imgPath,
  });

  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: boxShadow,
      ),
      child: Image.asset(
        imgPath,
        fit: BoxFit.cover,
      ),
    );
  }
}
