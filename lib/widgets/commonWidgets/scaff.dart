import 'package:flutter/material.dart';

class Scaff extends StatelessWidget {
  final void Function()? onPressed;
  final Widget content;
  const Scaff({
    Key? key,
    this.onPressed,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 50,
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                  onPressed: onPressed,
                ),
              ),
              content,
            ],
          ),
        ),
      ),
    );
  }
}
