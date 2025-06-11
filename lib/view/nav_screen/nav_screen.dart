import 'package:flutter/material.dart';
import 'package:meditation_app_ui/view/home/home.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> screens = [
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
