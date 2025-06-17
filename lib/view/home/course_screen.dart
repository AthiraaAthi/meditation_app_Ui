import 'package:flutter/material.dart';
import 'package:meditation_app_ui/utils/image_constant/image_constant.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(sun))),
              ),
              Positioned(
                top: 40,
                left: 20,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.arrow_back),
                ),
              ),
              Positioned(
                top: 40,
                right: 80,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.favorite_border),
                ),
              ),
              Positioned(
                top: 40,
                right: 20,
                child: CircleAvatar(),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
