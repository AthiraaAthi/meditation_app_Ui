import 'package:flutter/material.dart';
import 'package:meditation_app_ui/utils/color_constant/color_constant.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Silent",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 4),
              ),
              Container(
                height: 30,
                width: 30,
              )
            ],
          )
        ],
      )),
    );
  }
}
