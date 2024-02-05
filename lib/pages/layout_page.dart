import 'package:flutter/material.dart';
import 'package:foodi/pages/home_page.dart';
import 'package:foodi/utils/colors.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  int selectedIndex = 0;

  List<Widget> pages = [
    HomePage(),
    const Text("Second Page"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Foodi",
          style: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: pages[selectedIndex],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        elevation: 16.0,
        shadowColor: blackColor,
        backgroundColor: const Color.fromARGB(255, 238, 238, 238),
        indicatorColor: whiteColor,
        surfaceTintColor: whiteColor,
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.home,
            ),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.settings,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
