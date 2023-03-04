import 'package:api_pro/bottom_navigation.dart';
import 'package:flutter/material.dart';

import 'activity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationPage(),
      // home: HomePage(),
    );
  }
}