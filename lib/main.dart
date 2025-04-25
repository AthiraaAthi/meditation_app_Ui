import 'package:flutter/material.dart';
import 'package:meditation_app_ui/view/starting_page/starting.dart';

void main() {
  runApp(const MeditationApp());
}

class MeditationApp extends StatelessWidget {
  const MeditationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartingScreen(),
    );
  }
}
