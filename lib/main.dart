import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo/Todo.dart';


void main() {
  runApp(MyApp());
  // widget : class build by google
  // vs class : class build by you
}

/// Stateless => غير تفاعلية صفحات
/// Stateful =>  صفحات االتفاعليه

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 
    return MaterialApp(
debugShowCheckedModeBanner: false,

home:TodoApp(),

    );



  }
}

