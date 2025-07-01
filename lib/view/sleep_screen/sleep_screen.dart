import 'package:flutter/material.dart';
import 'package:meditation_app_ui/utils/color_constant/color_constant.dart';
import 'package:meditation_app_ui/utils/image_constant/image_constant.dart';

class SleepScreen extends StatefulWidget {
  const SleepScreen({super.key});

  @override
  State<SleepScreen> createState() => _SleepScreenState();
}

class _SleepScreenState extends State<SleepScreen> {
  List<String> options = [
    all,
    my,
    anxious,
    sleep,
    kids,
  ];
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
                height: 50,
              ),
              Text(
                "Sleep Stories",
                style: TextStyle(
                  fontSize: 28,
                  color: white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Soothing bedtime stories to help you fall \n into a deep and natural sleep",
                style: TextStyle(
                    color: white, fontSize: 16, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 95,
                child: ListView.builder(
                  itemCount: options.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      width: 65,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(options[index]),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    height: 240,
                    decoration: BoxDecoration(
                        color: welcomeBg,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(oceanMoon),
                          fit: BoxFit.cover,
                        )),
                  ),
                  CircleAvatar(
                    radius: 20,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
