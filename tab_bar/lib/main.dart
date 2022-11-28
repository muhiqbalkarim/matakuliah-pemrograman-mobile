import 'package:flutter/material.dart';
import 'package:tab_bar/tabbar_main.dart';
import 'package:tab_bar/tabbar_main.dart';
import 'package:tab_bar/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Tabbarmain(),
    );
  }
}
