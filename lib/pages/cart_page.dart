import 'package:flutter/material.dart';
import 'package:foodi/utils/colors.dart';
import 'package:foodi/utils/data.dart';
import 'package:foodi/widgets/cart_detail.dart';
import 'package:foodi/widgets/cart_food_card.dart';

class CartPage extends StatelessWidget {
  const CartPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cart",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Column(
                children: cartFoods
                    .map(
                      (food) => CartFoodCart(
                        name: food["name"],
                        type: food["type"],
                        imgPath: food["imgPath"],
                        price: food["price"].toString(),
                        detail: food["detail"],
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 10),
              const CartDetail(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: lightGreyColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Total: ",
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "\$80",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(primaryColor),
                foregroundColor: MaterialStatePropertyAll(whiteColor),
              ),
              child: const Text("Order Now"),
            ),
          ],
        ),
      ),
    );
  }
}
