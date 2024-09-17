import 'package:flutter/material.dart';
import 'package:todo/HomeScrren.dart';

void main() {
  runApp(const CancerManagementApp());
}

class CancerManagementApp extends StatelessWidget {
  const CancerManagementApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomeScreen(),  // الصفحة الرئيسية
    );
  }
}
