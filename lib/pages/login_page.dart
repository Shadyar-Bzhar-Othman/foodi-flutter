import 'package:flutter/material.dart';
import 'package:foodi/widgets/custom_button.dart';
import 'package:foodi/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() {
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
            Expanded(child: Container()),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextField(
                    hintText: "Enter your Email",
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
                    hintText: "Password",
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
            Expanded(
              flex: 3,
              child: Container(),
            ),
            CustomButton(
              text: "Login",
              onTap: login,
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  "Register",
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
