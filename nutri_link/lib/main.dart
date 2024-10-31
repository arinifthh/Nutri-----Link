import 'package:flutter/material.dart';
import 'package:nutri_link/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Nutri--Link',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
