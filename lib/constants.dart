import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Constants {
  navBarTextStyle() {
    return GoogleFonts.lato(color: Colors.white, fontSize: 5.sp);
  }

  hoverTextStyle() {
    return GoogleFonts.lato(
        shadows: [
          const Shadow(
              color: Color.fromARGB(255, 112, 155, 190), offset: Offset(0, -5))
        ],
        decoration: TextDecoration.underline,
        color: Colors.transparent,
        decorationColor: const Color.fromARGB(255, 112, 155, 190),
        fontSize: 5.1.sp,
        fontStyle: FontStyle.italic);
  }

  String get aboutMe =>
      "Hey everyone this is Sathya, I Recently completed my graduation in Bachelors of Technology in the field of Computer Science and Engineering. I am a passionate engineer who loves working on various kinds of projects, I worked with various technologies like web technology using MEAN stack, Android Development using JAVA, even a bit of Machine Learning. Currently I have been working with Flutter from the past year.";

  TextStyle get headingTextStyle => GoogleFonts.lato(fontSize: 12.sp);
}
