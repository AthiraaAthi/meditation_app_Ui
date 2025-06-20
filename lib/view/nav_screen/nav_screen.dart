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
  int _currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    SleepScreen(),
    MedidateScreen(),
    MusicScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(_currentIndex == 0 ? Icons.home : Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(_currentIndex == 1
                ? Icons.nightlight_round
                : Icons.nightlight_round_outlined),
            label: 'Sleep',
          ),
          BottomNavigationBarItem(
            icon: Icon(_currentIndex == 2
                ? Icons.self_improvement
                : Icons.self_improvement_outlined),
            label: 'Meditate',
          ),
          BottomNavigationBarItem(
            icon: Icon(_currentIndex == 3
                ? Icons.music_note
                : Icons.music_note_outlined),
            label: 'Music',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                _currentIndex == 4 ? Icons.person_2 : Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
