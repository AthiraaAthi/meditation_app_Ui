import 'package:flutter/material.dart';
import 'package:meditation_app_ui/utils/color_constant/color_constant.dart';
import 'package:meditation_app_ui/view/home/home.dart';
import 'package:meditation_app_ui/view/meditate_screen/medidate_screen.dart';
import 'package:meditation_app_ui/view/music_screen/music_screen.dart';
import 'package:meditation_app_ui/view/profile_screen/profile.dart';
import 'package:meditation_app_ui/view/sleep_screen/sleep_screen.dart';

class NavScreen extends StatefulWidget {
  final int initialIndex;

  const NavScreen(
      {super.key,
      this.initialIndex =
          0}); //for getting specific screen from nav for welcome sleep screen

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
  void initState() {
    _currentIndex = widget.initialIndex; // Set from constructor
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: _currentIndex == 1 ? darkBlue : Colors.white,
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
