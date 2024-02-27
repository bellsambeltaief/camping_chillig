import 'package:camping_chillig/tools/images.dart';
import 'package:camping_chillig/widgets/commonWidgets/scaff.dart';
import 'package:camping_chillig/widgets/commonWidgets/textfield.dart';
import 'package:camping_chillig/widgets/sign/sign_in.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  static String routeName = "/SignUp";
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaff(
      onPressed: () {
        Navigator.of(context).pop();
      },
      content: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                Images.fire,
                height: 100,
                width: 100,
              ),
              const SizedBox(height: 30),
              const Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              const TextFields(
                hintText: "Enter your First Name",
                icon: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                obscureText: false,
              ),
              const SizedBox(height: 30),
              const TextFields(
                hintText: "Enter your Last Name",
                icon: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                obscureText: false,
              ),
              const SizedBox(height: 30),
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
              const TextFields(
                hintText: "ReEnter your password",
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
                      builder: (context) => const SignIn(),
                    ),
                  );
                },
                child: RichText(
                  text: const TextSpan(
                    text: "You already have an Account ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    children: [
                      TextSpan(
                        text: "Sign In",
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
    );
  }
}
