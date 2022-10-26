import 'package:about_me/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home.dart';
import 'provider/bottom_navigation_provider.dart';

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
      theme: ThemeData(scaffoldBackgroundColor: customColor[CustomColor.white]),
      home: MultiProvider(providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => BottomNavigationProvider(),
        )
      ], child: const Home()),
    );
  }
}
