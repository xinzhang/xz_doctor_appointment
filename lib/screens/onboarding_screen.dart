import 'package:flutter/material.dart';
import 'package:xz_doctor_appoint/constant.dart';

import 'home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          backgroundColor: kBackgroundColor,
          body: SafeArea(
              bottom: false,
              child: Stack(
                children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        'assets/images/onboarding_illustration.png',
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fitWidth,
                      )),
                  Positioned(
                      top: MediaQuery.of(context).size.height / 6,
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 8,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Choose The Doctor\nYou Want',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                  color: kTitleTextColor,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Lorem ipsum dolor amet, consectetur\nadipiscing inet deli',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: kTitleTextColor.withOpacity(0.7),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HomeScreen(),
                                      ),
                                    );
                                  },
                                  color: kOrangeColor,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 30,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    'Get Started',
                                    style: TextStyle(
                                      color: kWhiteColor,
                                      fontSize: 16,
                                    ),
                                  ))
                            ],
                          )))
                ],
              ))),
    );
  }
}
