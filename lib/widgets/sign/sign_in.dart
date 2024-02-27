import 'package:camping_chillig/tools/images.dart';
import 'package:camping_chillig/widgets/commonWidgets/textfield.dart';
import 'package:camping_chillig/widgets/sign/sign_up.dart';
import 'package:camping_chillig/widgets/welcome/welcome.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  static String routeName = "/SignIn";
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 50,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                   size: 30,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Welcome(),
                        ),
                      );
                    },
                  ),
                ),
                Image.asset(
                  Images.fire,
                  height: 100,
                  width: 100,
                ),
                const SizedBox(height: 30),
                const Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 50),
                const TextFields(
                  hintText: "Enter your e-mail",
                  icon: Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                  obscureText: false,
                ),
                const SizedBox(height: 30),
                const TextFields(
                  hintText: "Enter your password",
                  icon: Icon(
                    Icons.password,
                    color: Colors.grey,
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ),
                    );
                  },
                  child: RichText(
                    text: const TextSpan(
                      text: "You don't have an Account? ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      children: [
                        TextSpan(
                          text: "Sign Up",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
