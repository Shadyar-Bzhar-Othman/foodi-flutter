import 'package:flutter/material.dart';
import 'package:foodi/utils/assets.dart';
import 'package:foodi/utils/colors.dart';
import 'package:foodi/widgets/search_input.dart';
import 'package:foodi/widgets/v_food_card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<Map<String, dynamic>> foods = [
    {
      "name": "Pizza 1",
      "imgPath": pizza1,
      "type": "Chicken",
      "price": 20,
      "detail": 20,
      "deliveryTime": 33,
    },
    {
      "name": "Pizza 2",
      "imgPath": pizza2,
      "type": "Chicken",
      "price": 20,
      "detail": 20,
      "deliveryTime": 33,
    },
    {
      "name": "Pizza 3",
      "imgPath": pizza3,
      "type": "Chicken",
      "price": 20,
      "detail": 20,
      "deliveryTime": 33,
    },
    {
      "name": "Pizza 4",
      "imgPath": pizza4,
      "type": "Chicken",
      "price": 20,
      "detail": 20,
      "deliveryTime": 33,
    },
  ];

  List<Map<String, dynamic>> categories = [
    {
      "name": "Burger",
      "imgPath": burgerIcon,
    },
    {
      "name": "Pizza",
      "imgPath": pizzaIcon,
    },
    {
      "name": "Fish",
      "imgPath": fishIcon,
    },
    {
      "name": "Sushi",
      "imgPath": sushiIcon,
    },
  ];

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchInput(controller: searchController),
        const SizedBox(height: 15),
        const Text(
          "Categories",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        const SizedBox(height: 15),
        const Text(
          "Populer",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 275,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: foods.length,
            itemBuilder: (context, index) {
              return VFoodCard();
            },
          ),
        ),
        const SizedBox(height: 15),
        const Text(
          "Newest",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
