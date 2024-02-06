import 'package:flutter/material.dart';
import 'package:foodi/pages/food_detail.dart';
import 'package:foodi/pages/food_list_page.dart';
import 'package:foodi/utils/assets.dart';
import 'package:foodi/widgets/category_card.dart';
import 'package:foodi/widgets/h_food_card.dart';
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
      "detail":
          "dahfjhsdahfkjhdfhjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjakhadsjfjdshajfhljdhlkfjkshld",
      "deliveryTime": 33,
      "category": "Pizza",
    },
    {
      "name": "Fish 1",
      "imgPath": fish1,
      "type": "Meat",
      "price": 20,
      "detail": "",
      "deliveryTime": 33,
      "category": "Fish",
    },
    {
      "name": "Pizza 2",
      "imgPath": pizza2,
      "type": "Chicken",
      "price": 20,
      "detail": "",
      "deliveryTime": 33,
      "category": "Pizza",
    },
    {
      "name": "Pizza 3",
      "imgPath": pizza3,
      "type": "Chicken",
      "price": 20,
      "detail": "",
      "deliveryTime": 33,
      "category": "Pizza",
    },
    {
      "name": "Pizza 4",
      "imgPath": pizza4,
      "type": "Chicken",
      "price": 20,
      "detail": "",
      "deliveryTime": 33,
      "category": "Pizza",
    },
    {
      "name": "Fish 2",
      "imgPath": fish2,
      "type": "Meat",
      "price": 20,
      "detail": "",
      "deliveryTime": 33,
      "category": "Fish",
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
    return SingleChildScrollView(
      child: Column(
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
          SizedBox(
            height: 70,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return CategoryCard(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoodListPage(
                          foods: foods,
                          category: categories[index]["name"],
                        ),
                      ),
                    );
                  },
                  imgPath: categories[index]["imgPath"],
                );
              },
            ),
          ),
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
                return VFoodCard(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoodDetail(
                          name: foods[index]["name"],
                          type: foods[index]["type"],
                          imgPath: foods[index]["imgPath"],
                          price: foods[index]["price"].toString(),
                          detail: foods[index]["detail"],
                          deliveryTime: foods[index]["deliveryTime"].toString(),
                        ),
                      ),
                    );
                  },
                  name: foods[index]["name"],
                  type: foods[index]["type"],
                  imgPath: foods[index]["imgPath"],
                  price: foods[index]["price"].toString(),
                  detail: foods[index]["detail"],
                );
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
          SingleChildScrollView(
            child: Column(
              children: foods
                  .map(
                    (food) => HFoodCard(
                      onTap: () {},
                      name: food["name"],
                      type: food["type"],
                      imgPath: food["imgPath"],
                      price: food["price"].toString(),
                      detail: food["detail"],
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
