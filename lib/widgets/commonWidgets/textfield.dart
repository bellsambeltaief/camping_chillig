import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  final String? hintText;
  final Widget? icon;
  final bool? obscureText;
  const TextFields({
    Key? key,
    this.hintText,
    this.icon,
    this.obscureText,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        textAlign: TextAlign.start,
        style: const TextStyle(color: Colors.black),
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 5.0,
          ),
          suffixIcon: icon,
          hintText: hintText ?? "",
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
