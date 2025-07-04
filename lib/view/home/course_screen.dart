import 'package:flutter/material.dart';
import 'package:meditation_app_ui/utils/color_constant/color_constant.dart';
import 'package:meditation_app_ui/utils/image_constant/image_constant.dart';
import 'package:meditation_app_ui/view/home/audio_list.dart';

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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.arrow_back),
                    ),
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
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.download_outlined),
                  ),
                ),
              ]),
              //SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Happy Morning",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "COURSE",
                      style: TextStyle(
                          letterSpacing: 2, color: txtgrey, fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Ease the mind into a restful night's sleep with these deep, ambient tones.",
                      style: TextStyle(
                        color: txtgrey,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(Icons.favorite, color: Colors.pink, size: 20),
                        SizedBox(width: 5),
                        Text(
                          "24,234 Favorites",
                          style: TextStyle(
                            color: txtgrey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.headphones,
                          color: Colors.lightBlue,
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "34,234 Listening",
                          style: TextStyle(
                            color: txtgrey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Pick a Narrator',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 10),
                    DefaultTabController(
                        length: 2,
                        child: Column(
                          children: [
                            TabBar(
                              indicatorColor: defBlue,
                              labelColor: defBlue,
                              unselectedLabelColor: Colors.grey,
                              tabs: [
                                Tab(text: 'MALE VOICE'),
                                Tab(text: 'FEMALE VOICE'),
                              ],
                            ),
                            SizedBox(
                              height: 250,
                              child: TabBarView(
                                children: [
                                  AudioList(),
                                  AudioList(),
                                ],
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
