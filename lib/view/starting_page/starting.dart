import 'package:flutter/material.dart';
import 'package:meditation_app_ui/utils/color_constant/color_constant.dart';
import 'package:meditation_app_ui/utils/image_constant/image_constant.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Stack(children: [
          Column(
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
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 4),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        image:
                            DecorationImage(image: AssetImage(blueMoonIcon))),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Moon",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 4),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(starting))),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(),
          )
        ]),
      ),
    );
  }
}
