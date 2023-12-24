import 'package:flutter/material.dart';
import 'package:webtoon/screens/home_screen.dart';
// import 'package:webtoon/services/api_service.dart';
import 'dart:io';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
