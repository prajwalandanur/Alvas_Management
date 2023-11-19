import 'package:alvas_management/Library/ui/library%20pages/available_books_Model.dart';
import 'package:alvas_management/Library/ui/library%20pages/library_page.dart';
import 'package:alvas_management/Library/ui/widgets/Available%20books%20widgets.dart';
import 'package:alvas_management/home/ui/home_page.dart';
import 'package:alvas_management/login%20and%20register/pages/login.dart';
import 'package:alvas_management/login%20and%20register/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}
