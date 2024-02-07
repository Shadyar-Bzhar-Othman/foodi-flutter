import 'package:flutter/material.dart';
import 'package:foodi/utils/colors.dart';
import 'package:foodi/widgets/number_selecter.dart';
import 'package:foodi/widgets/star.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({
    super.key,
    required this.name,
    required this.imgPath,
    required this.type,
    required this.price,
    required this.detail,
    required this.deliveryTime,
  });

  final String name;
  final String imgPath;
  final String type;
  final String price;
  final String detail;
  final String deliveryTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  imgPath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 250,
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Star(),
                        Text(
                          "\$${price.toString()}",
                          style: const TextStyle(
                            color: primaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const NumberSelecter(),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Text(
                      detail,
                      style: const TextStyle(
                        color: lightGreyColor,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Delivery Time:",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.timer),
                            const SizedBox(width: 5),
                            Text(
                              "$deliveryTime Minutes",
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: "Total Price: ",
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "\$$price",
                    style: const TextStyle(
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
              child: const Row(
                children: [
                  Icon(Icons.shopping_cart),
                  SizedBox(width: 5),
                  Text("Add to card"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
