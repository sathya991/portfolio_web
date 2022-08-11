import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class BlurredTextWidget extends StatelessWidget {
  const BlurredTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10.w, 15.h, 0, 0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              constraints: BoxConstraints(
                  minWidth: 30.w,
                  maxWidth: 80.w,
                  minHeight: 30.h,
                  maxHeight: 60.h),
              color: Colors.white.withOpacity(0.02),
              child: Padding(
                padding: EdgeInsets.all(8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hey There!",
                        style: GoogleFonts.rubik(
                            color: Colors.white, fontSize: 8.sp)),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      "G Sathya Srivatsav",
                      style: GoogleFonts.rubik(
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      "Flutter Developer",
                      style: GoogleFonts.rubik(
                        color: Colors.white,
                        fontSize: 14.sp,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
