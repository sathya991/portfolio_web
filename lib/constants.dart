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
}
