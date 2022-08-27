import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/myWorksCard.dart';
import 'package:portfolio/widgets/carouselView.dart';
import 'package:sizer/sizer.dart';

class MyWorksPart extends StatelessWidget {
  const MyWorksPart({Key? key, required this.isMobile}) : super(key: key);
  final isMobile;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [HexColor("#ECE9E6"), HexColor("#ffffff")])),
      child: Padding(
        padding: Constants().constPaddingSize,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "My works",
                  style: isMobile
                      ? Constants().mobileHeadingTextStyle
                      : Constants().headingTextStyle,
                ),
                Text(
                  "My aresenal of works to show off",
                  style: isMobile
                      ? Constants().mobileCaptionsTextStyle
                      : Constants().captionsTextStyle,
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(
                height: 60.h,
                width: 80.w,
                child: isMobile
                    ? const MobileCarouselView()
                    : const MyCarouselView()),
          ],
        ),
      ),
    );
  }
}
