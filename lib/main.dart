import 'package:alvas_management/home/ui/home_page.dart';
import 'package:alvas_management/login%20and%20register/pages/login.dart';
import 'package:alvas_management/login%20and%20register/pages/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
