import 'package:flutter/material.dart';
import 'package:meditation_app_ui/utils/image_constant/image_constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Silent",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 4,
                    ),
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
                  const SizedBox(width: 5),
                  const Text(
                    "Moon",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 4,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text("Good Morning, Alex",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
              Text(
                "We Wish You Have A Good Day",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFA1A4B2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 220,
                    width: 180,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(basics))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 20, left: 10, right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text("3-10 MIN",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                )),
                          ),
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Container(
                                height: 35,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(child: Text("Start")),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 220,
                    width: 180,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(relaxation))),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: 375,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(dailyThought),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Recommended For You",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
