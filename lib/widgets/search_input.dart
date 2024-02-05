import 'package:flutter/material.dart';
import 'package:foodi/utils/colors.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: boxShadow,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: primaryColor,
            ),
          ),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: "What would you like to eat?",
                hintStyle: TextStyle(
                  color: lightGreyColor,
                  fontSize: 14,
                ),
                border: InputBorder.none,
              ),
              style: const TextStyle(
                color: darkGreyColor,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
