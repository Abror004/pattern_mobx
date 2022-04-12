import 'package:flutter/material.dart';
import 'package:pattern_mobx/locator.dart';

import 'components/home/view/home_screen.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: HomeScreen(),
    );
  }
}
