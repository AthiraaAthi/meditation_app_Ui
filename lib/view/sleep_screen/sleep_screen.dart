import 'package:flutter/material.dart';
import 'package:meditation_app_ui/utils/color_constant/color_constant.dart';

class SleepScreen extends StatelessWidget {
  const SleepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/welcome sleep.png"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Container(
              height: 65,
              width: 375,
              decoration: BoxDecoration(color: txtBlueGrey),
            )
          ],
        ),
      ),
    );
  }
}
