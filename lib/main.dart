import 'package:flutter/material.dart';
// import 'package:flutter_animate_menu_bar/menu_bar.dart';
import 'package:flutter_animate_menu_bar/info_card.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InfoCardd()
    );
  }
}