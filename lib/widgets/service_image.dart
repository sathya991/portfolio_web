import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/service_model.dart';
import 'package:sizer/sizer.dart';

class ServiceImage extends StatelessWidget {
  const ServiceImage({Key? key, this.color, this.imageAsset, this.text})
      : super(key: key);
  final color;
  final imageAsset;
  final text;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 18.h,
        width: 15.w,
        decoration: BoxDecoration(
            color: color.withOpacity(0.8),
            borderRadius: BorderRadius.circular(0.5.h)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imageAsset,
              height: 10.h,
              width: 10.w,
            ),
            SizedBox(
              height: 1.h,
            ),
            text == "IOS Developement using Flutter"
                ? Text(
                    text,
                    style: GoogleFonts.lato(color: Colors.black),
                    textAlign: TextAlign.center,
                  )
                : Text(
                    text,
                    style: GoogleFonts.lato(color: Colors.white),
                    textAlign: TextAlign.center,
                  )
          ],
        ));
  }
}

class ServiceImageMobile extends StatelessWidget {
  const ServiceImageMobile(
      {Key? key,
      required this.color,
      required this.imageAsset,
      required this.text})
      : super(key: key);
  final Color color;
  final String imageAsset;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7.h,
      width: 80.w,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20),
          color: color.withOpacity(0.8)),
      child: ListTile(
        title: Text(
          text,
          textAlign: TextAlign.center,
          style: Constants().mobileNormalTextStyle,
        ),
        trailing: Image.asset(
          imageAsset,
          height: 50.h,
          width: 15.w,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
