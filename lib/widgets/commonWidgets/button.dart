import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static String routeName = "/Button";
  final String? text;
  const Button({
    super.key,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: Color.fromARGB(255, 197, 50, 5),
      ),
      child: GestureDetector(
        onTap: () {},
        child: Center(
          child: Text(
            text ?? '',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
