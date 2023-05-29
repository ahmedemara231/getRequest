import 'package:flutter/material.dart';
import 'package:untitled7_alaa/home.dart';
import 'package:untitled7_alaa/home2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home2(),
    );
  }
}
