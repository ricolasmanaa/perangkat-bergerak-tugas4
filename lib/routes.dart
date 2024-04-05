import 'package:flutter/material.dart';
import 'main.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => HomePage(),
  '/detail': (context) => DetailPage(),
};
