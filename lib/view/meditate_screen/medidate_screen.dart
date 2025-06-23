import 'package:flutter/material.dart';
import 'package:meditation_app_ui/utils/color_constant/color_constant.dart';

class MedidateScreen extends StatelessWidget {
  const MedidateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Meditate',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                "we can learn how to recognize when our minds\n are doing their normal everyday acrobatics.",
                style: TextStyle(fontSize: 13, color: txtgrey),
              ),
              SizedBox(height: 20),
              ListView()
            ],
          ),
        ),
      ),
    );
  }
}
