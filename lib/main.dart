import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsividade/pages/Home/home_screem.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
