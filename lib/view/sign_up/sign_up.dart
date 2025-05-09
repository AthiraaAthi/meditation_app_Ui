import 'package:flutter/material.dart';
import 'package:meditation_app_ui/utils/color_constant/color_constant.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Create Your Account",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 50,
                width: 375,
                decoration: BoxDecoration(
                  color: purple,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
