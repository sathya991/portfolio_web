import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/myWorksCard.dart';
import 'package:portfolio/widgets/carouselView.dart';
import 'package:sizer/sizer.dart';

class MyWorksPart extends StatelessWidget {
  const MyWorksPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      decoration: const BoxDecoration(
          image: DecorationImage(
              opacity: 0.6,
              image: AssetImage(
                'images/worksBG.jpg',
              ),
              fit: BoxFit.cover)),
      child: Padding(
        padding: Constants().constPaddingSize,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "My works",
                  style: Constants().headingTextStyle,
                ),
                Text(
                  "My aresenal of works to show off",
                  style: Constants().captionsTextStyle,
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(height: 60.h, width: 80.w, child: const MyCarouselView()),
          ],
        ),
      ),
    );
  }
}
