import 'package:about_me/shared/custom_color.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() async {
  // await Future.delayed(const Duration(seconds: 3));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: customColor['white']),
      home: const Home(),
    );
  }
}
