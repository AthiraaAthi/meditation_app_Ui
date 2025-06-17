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
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(sun))),
          )
        ],
      ),
    );
  }
}
