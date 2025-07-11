import 'package:flutter/material.dart';
import 'package:meditation_app_ui/utils/color_constant/color_constant.dart';
import 'package:meditation_app_ui/utils/image_constant/image_constant.dart';
import 'package:meditation_app_ui/view/sleep_screen/welcome_sleepScreen.dart';

class MedidateScreen extends StatefulWidget {
  const MedidateScreen({super.key});

  @override
  State<MedidateScreen> createState() => _MedidateScreenState();
}

class _MedidateScreenState extends State<MedidateScreen> {
  List<String> options = [
    all,
    my,
    anxious,
    sleep,
    kids,
  ];
  List<String> grid = [
    daysCalm,
    anxietyRelease,
    morningStillness,
    mindfulShores
  ];
  List<Widget> screens = [
    WelcomeSleep(),
    WelcomeSleep(),
    WelcomeSleep(),
    WelcomeSleep(),
    WelcomeSleep(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Meditate',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(
                  "we can learn how to recognize when our minds\n are doing their normal everyday acrobatics.",
                  style: TextStyle(fontSize: 16, color: txtgrey),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 95,
                  child: ListView.builder(
                    itemCount: options.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => screens[index],
                            ),
                          );
                        },
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
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 95,
                  width: 375,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(dailyCalm),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: grid.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      mainAxisExtent: 200),
                  itemBuilder: (context, index) => Container(
                    width: 170,
                    height: 210,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(grid[index]), fit: BoxFit.cover),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
