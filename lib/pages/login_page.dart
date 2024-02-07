import 'package:flutter/material.dart';
import 'package:foodi/pages/layout_page.dart';
import 'package:foodi/pages/register_page.dart';
import 'package:foodi/utils/assets.dart';
import 'package:foodi/widgets/custom_button.dart';
import 'package:foodi/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login(BuildContext context) {
    bool isValidate = _formKey.currentState!.validate();

    if (!isValidate) {
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const LayoutPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 200,
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  child: Column(
                    children: [
                      Text(
                        "Welcome Back",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "register to access your account",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextField(
                    hintText: "Enter your Email",
                    controller: emailController,
                    icon: Image.asset(mailIcon),
                    onValidate: (value) {
                      if (value == null || value.isEmpty) {
                        return "It can't be empty";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    hintText: "Password",
                    controller: passwordController,
                    icon: Image.asset(lockIcon),
                    onValidate: (value) {
                      if (value == null || value.isEmpty) {
                        return "It can't be empty";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
            CustomButton(
              text: "Login",
              onTap: () {
                login(context);
              },
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffFF3951),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
