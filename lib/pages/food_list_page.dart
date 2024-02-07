import 'package:flutter/material.dart';
import 'package:foodi/pages/food_detail.dart';
import 'package:foodi/widgets/h_food_card.dart';

class FoodListPage extends StatefulWidget {
  const FoodListPage({
    super.key,
    required this.foods,
    required this.category,
  });

  final List<Map<String, dynamic>> foods;
  final String category;

  @override
  State<FoodListPage> createState() => _FoodListPageState();
}

class _FoodListPageState extends State<FoodListPage> {
  late List<Map<String, dynamic>> foods;

  @override
  void initState() {
    super.initState();
    foods = widget.foods
        .where((food) => food["category"] == widget.category)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${widget.category} Foods",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: foods.isNotEmpty
            ? ListView.builder(
                itemCount: foods.length,
                itemBuilder: (context, index) {
                  return HFoodCard(
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
                            deliveryTime:
                                foods[index]["deliveryTime"].toString(),
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
              )
            : const Center(
                child: Text("There's no foods for this category"),
              ),
      ),
    );
  }
}
