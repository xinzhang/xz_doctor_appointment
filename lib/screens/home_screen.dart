import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:xz_doctor_appoint/components/search_%20bar.dart';
import 'package:xz_doctor_appoint/constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/icon/menu.svg'),
                    SvgPicture.asset('assets/icons/profile.svg'),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Find Your Desired\nDoctor',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: kTitleTextColor,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: SearchBar(),
              )
            ],
          )),
        ));
  }
}
