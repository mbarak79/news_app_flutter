import 'package:flutter/material.dart';
import 'screens/onboarding.dart';

main() {
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnBoarding(),
    );
  }
}