import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';
import 'package:sizer/sizer.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({Key? key, this.isMobile}) : super(key: key);
  final isMobile;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About Me",
          style: isMobile
              ? Constants().mobileHeadingTextStyle
              : Constants().headingTextStyle,
        ),
        SizedBox(
          height: 1.h,
        ),
        isMobile ? MobileAbout() : DesktopAbout(),
      ],
    );
  }
}

class MobileAbout extends StatelessWidget {
  const MobileAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Constants().aboutMe, style: Constants().mobileNormalTextStyle),
        SizedBox(
          height: 1.h,
        ),
        CircleAvatar(
          minRadius: 6.h,
          maxRadius: 10.h,
          backgroundColor: const Color.fromARGB(255, 90, 178, 249),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "01",
                style: GoogleFonts.lato(fontSize: 15.sp, color: Colors.white),
              ),
              Text(
                "Year of Experience",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(fontSize: 10.sp, color: Colors.white),
              )
            ],
          ),
        )
      ],
    );
    ;
  }
}

class DesktopAbout extends StatelessWidget {
  const DesktopAbout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            child: Text(Constants().aboutMe,
                style: GoogleFonts.lato(fontSize: 4.sp))),
        SizedBox(
          width: 3.w,
        ),
        CircleAvatar(
          radius: 12.h,
          backgroundColor: const Color.fromARGB(255, 90, 178, 249),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "01",
                style: GoogleFonts.lato(fontSize: 10.sp, color: Colors.white),
              ),
              Text(
                "Year of Experience",
                style: GoogleFonts.lato(fontSize: 3.sp, color: Colors.white),
              )
            ],
          ),
        )
      ],
    );
  }
}
