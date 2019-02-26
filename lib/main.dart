import 'package:flutter/material.dart';
import 'ui/home/home_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '龙族app',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}