import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/link.dart';

class ContactContainer extends StatelessWidget {
  const ContactContainer(
      {Key? key,
      required this.link,
      required this.color,
      required this.imageAsset,
      required this.text,
      this.isMobile})
      : super(key: key);
  final String link;
  final Color color;
  final String imageAsset;
  final String text;
  final isMobile;
  @override
  Widget build(BuildContext context) {
    return isMobile
        ? Link(
            target: LinkTarget.blank,
            uri: Uri.parse(link),
            builder: (context, followLink) {
              return GestureDetector(
                onTap: followLink,
                child: Container(
                  padding: EdgeInsets.all(0.5.h),
                  height: 5.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                      color: color.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Image.asset(
                        imageAsset,
                        height: 5.h,
                        width: 5.w,
                      ),
                      SizedBox(
                        width: 0.6.w,
                      ),
                      Text(
                        text,
                        style: Constants().mobileNormalTextStyle,
                      ),
                    ],
                  ),
                ),
              );
            })
        : Link(
            target: LinkTarget.blank,
            uri: Uri.parse(link),
            builder: (context, followLink) {
              return GestureDetector(
                onTap: followLink,
                child: Container(
                  padding: EdgeInsets.fromLTRB(1.w, 1.h, 1.w, 1.h),
                  height: 7.h,
                  width: 16.w,
                  decoration: BoxDecoration(
                      color: color.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Image.asset(
                        imageAsset,
                        height: 4.h,
                        width: 4.w,
                      ),
                      SizedBox(
                        width: 0.6.w,
                      ),
                      Text(
                        text,
                        style: Constants().normalTextStyle,
                      ),
                    ],
                  ),
                ),
              );
            });
  }
}
