import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xz_doctor_appoint/screens/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor appointment',
      theme: ThemeData(
        textTheme: GoogleFonts.varelaRoundTextTheme(Theme.of(context).textTheme),
      ),
      home: OnboardingScreen(),
    );
  }
}

