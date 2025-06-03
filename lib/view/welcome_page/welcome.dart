import 'package:flutter/material.dart';
import 'package:meditation_app_ui/utils/color_constant/color_constant.dart';
import 'package:meditation_app_ui/utils/image_constant/image_constant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: welcomeBg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
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
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(blueMoonIcon),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Moon",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 4,
                        color: white),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Hello There, Welcome",
                style: TextStyle(
                  fontSize: 25,
                  color: white,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text("To Silent Moon",
                  style: TextStyle(
                    fontSize: 25,
                    color: white,
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                "Explore the app, Find some peace of mind to \n prepare for medication ",
                style: TextStyle(
                  color: white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                  image: DecorationImage(
                    image: AssetImage(welcomeImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                child: Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Color(0xffEBEAEC),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "GET STARTED",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
