import 'package:flutter/material.dart';
import 'package:foodi/pages/login_page.dart';
import 'package:foodi/utils/assets.dart';
import 'package:foodi/widgets/custom_button.dart';
import 'package:foodi/widgets/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void register(BuildContext context) {
    bool isValidate = _formKey.currentState!.validate();

    if (!isValidate) {
      return;
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
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
                        "Get Started",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "by creating a free account",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextField(
                    hintText: "Full Name",
                    controller: nameController,
                    icon: Image.asset(userIcon),
                    onValidate: (value) {
                      if (value == null || value.isEmpty) {
                        return "It can't be empty";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    hintText: "Valid Email",
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
                    hintText: "Phone Number",
                    controller: phoneController,
                    icon: Image.asset(smartphoneIcon),
                    onValidate: (value) {
                      if (value == null || value.isEmpty) {
                        return "It can't be empty";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    hintText: "Strong Password",
                    controller: passwordController,
                    icon: Image.asset(lockIcon),
                    onValidate: (value) {
                      if (value == null || value.isEmpty) {
                        return "It It can't be empty";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
            CustomButton(
              text: "Register",
              onTap: () {
                register(context);
              },
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account? ",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Login",
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
