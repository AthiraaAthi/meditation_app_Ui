import 'package:flutter/material.dart';
import 'package:meditation_app_ui/utils/color_constant/color_constant.dart';
import 'package:meditation_app_ui/utils/image_constant/image_constant.dart';

class SleepScreen extends StatelessWidget {
  const SleepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
              ),
              Text(
                "Welcome to Sleep",
                style: TextStyle(
                  color: white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Explore the new king of sleep. It uses sound \n and visualization to create perfect conditions \n for refreshing sleep.",
                style: TextStyle(color: white, fontSize: 16, wordSpacing: 2),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 220,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(birds),
                  ),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Container(
                height: 65,
                width: 375,
                decoration: BoxDecoration(
                    color: defBlue, borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(
                        color: white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
