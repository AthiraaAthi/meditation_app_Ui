import 'package:flutter/material.dart';
import 'package:meditation_app_ui/utils/color_constant/color_constant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: welcomeBg,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Silent",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 4,
                      color: white),
                ),
                const SizedBox(width: 5),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
