

// ignore_for_file: prefer_const_constructors, unused_import

import 'dart:async';
import 'package:aspire_hub_new/info/info_screen_1.dart';
import 'package:aspire_hub_new/profile/screen1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();

    // Start a timer for 5 seconds
    Timer(Duration(seconds: 5), () {
      // Navigate to the next screen after 5 seconds
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Code1())
          //GeneralInformationScreen()), // Replace NextScreen with the actual screen widget
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// IMAGE
          Image.asset("assets/svg/image-landingpage/aspire-hub-logo.png"),

          SizedBox(height: 20),

          /// APP NAME
          Text(
            "Get Started",
            style: GoogleFonts.quicksand(
              fontSize: 50,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
              color: Colors.black
                  .withOpacity(0.8), // Slight transparency for a softer look
              letterSpacing: 1.2, // Adds a bit of spacing between letters
              shadows: [
                Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 4,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
