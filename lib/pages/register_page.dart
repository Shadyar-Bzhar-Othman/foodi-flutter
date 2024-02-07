import 'package:flutter/material.dart';
import 'package:foodi/widgets/custom_button.dart';
import 'package:foodi/widgets/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void register() {
    bool isValidate = _formKey.currentState!.validate();

    if (!isValidate) {
      return;
    }

    print("Congratulation!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 200,
                  child: Image.asset(
                    "assets/images/1.png",
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
                    icon: Image.asset("assets/icons/user.png"),
                    onValidate: (value) {
                      if (value == null || value.isEmpty) {
                        return "Can't be empty";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    hintText: "Valid Email",
                    controller: emailController,
                    icon: Image.asset("assets/icons/mail.png"),
                    onValidate: (value) {
                      if (value == null || value.isEmpty) {
                        return "Can't be empty";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    hintText: "Phone Number",
                    controller: phoneController,
                    icon: Image.asset("assets/icons/smartphone.png"),
                    onValidate: (value) {
                      if (value == null || value.isEmpty) {
                        return "Can't be empty";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    hintText: "Strong Password",
                    controller: passwordController,
                    icon: Image.asset("assets/icons/lock.png"),
                    onValidate: (value) {
                      if (value == null || value.isEmpty) {
                        return "Can't be empty";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            Expanded(child: Container()),
            CustomButton(
              text: "Register",
              onTap: register,
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xffFF3951),
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
