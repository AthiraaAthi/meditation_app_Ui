import 'package:flutter/material.dart';
import 'package:meditation_app_ui/utils/color_constant/color_constant.dart';
import 'package:meditation_app_ui/utils/image_constant/image_constant.dart';
import 'package:meditation_app_ui/view/home/home.dart';
import 'package:meditation_app_ui/view/nav_screen/nav_screen.dart';
import 'package:meditation_app_ui/view/sign_up/sign_up.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
              Text("Welcome Back!",
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
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(fbIcon))),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text("CONTINUE WITH FACEBOOK",
                        style: TextStyle(fontSize: 16, color: white)),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 50,
                width: 375,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.grey.shade200, width: 2),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image:
                              DecorationImage(image: AssetImage(googleIcon))),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text("CONTINUE WITH GOOGLE",
                        style: TextStyle(fontSize: 16, color: black)),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "OR LOG IN WITH EMAIL",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email address',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: textfieldFill,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: textfieldFill,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavScreen(),
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    color: defBlue,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "LOG IN",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 16,
                      color: black,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "DON'T HAVE AN ACCOUNT?",
                      style: TextStyle(
                        color: txtBlueGrey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpScreen(),
                              ));
                        },
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                            color: purple,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
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
