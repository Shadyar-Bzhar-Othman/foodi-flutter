import 'package:flutter/material.dart';
import 'package:foodi/pages/layout_page.dart';
import 'package:foodi/pages/login_page.dart';
import 'package:foodi/utils/colors.dart';

void main() {
  runApp(const FoodiApp());
}

class FoodiApp extends StatelessWidget {
  const FoodiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodi App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
