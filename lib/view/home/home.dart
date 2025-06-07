import 'package:flutter/material.dart';
import 'package:meditation_app_ui/utils/image_constant/image_constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Silent",
            style: TextStyle(),
          ),
        ],
      ),
    );
  }
}
