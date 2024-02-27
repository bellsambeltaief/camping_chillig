import 'package:camping_chillig/widgets/commonWidgets/button.dart';
import 'package:camping_chillig/widgets/welcome/welcome.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  Welcome.routeName: (context) => const Welcome(),
  Button.routeName: (context) => const Button(),
};
