import 'package:flutter/material.dart';
import 'package:meditation_app_ui/view/home/home.dart';
import 'package:meditation_app_ui/view/meditate_screen/medidate_screen.dart';
import 'package:meditation_app_ui/view/music_screen/music_screen.dart';
import 'package:meditation_app_ui/view/profile_screen/profile.dart';
import 'package:meditation_app_ui/view/sleep_screen/sleep_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> screens = [
    HomeScreen(),
    SleepScreen(),
    MedidateScreen(),
    MusicScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
