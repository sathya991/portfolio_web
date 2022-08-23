import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/recentworks_details_model.dart';
import 'package:portfolio/models/recentworks_model.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/link.dart';

class MyWorksCard extends StatelessWidget {
  const MyWorksCard(
      {Key? key, required this.recentWork, required this.index, this.isMobile})
      : super(key: key);
  final RecentWorksModel recentWork;
  final int index;
  final isMobile;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      width: 80.w,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.white.withOpacity(0.6),
        elevation: 1,
        child: isMobile
            ? MobileCarouselImagePart(
                recentWork: recentWork,
                index: index,
                isMobile: isMobile,
              )
            : DesktopCarouselImagePart(
                recentWork: recentWork,
                index: index,
                isMobile: isMobile,
              ),
      ),
    );
  }
}

class MobileCarouselImagePart extends StatelessWidget {
  const MobileCarouselImagePart(
      {Key? key, required this.recentWork, required this.index, this.isMobile})
      : super(key: key);
  final RecentWorksModel recentWork;
  final int index;
  final isMobile;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(recentWork.image),
          height: 20.h,
          width: 100.w,
          fit: BoxFit.fill,
        ),
        SizedBox(
          height: 1.h,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                recentWork.category,
                style: Constants().mobileNormalTextStyle,
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                recentWork.title,
                style: Constants().mobileNormalTextStyle,
              ),
              SizedBox(
                height: 5.h,
              ),
              TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        isScrollControlled: true,
                        constraints: BoxConstraints(
                            minHeight: 80.h, maxHeight: 90.h, minWidth: 100.w),
                        builder: (context) {
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CarouselSlider.builder(
                                    itemCount: recentWorkDetailsList[index]
                                        .imageAssets
                                        .length,
                                    itemBuilder: (context, ind, i) {
                                      return Row(
                                        children: [
                                          Image.asset(
                                            recentWorkDetailsList[index]
                                                .imageAssets[ind],
                                            height: 60.h,
                                            width: 90.w,
                                            fit: BoxFit.fill,
                                          ),
                                          const VerticalDivider(
                                            thickness: 0.5,
                                          ),
                                        ],
                                      );
                                    },
                                    options: CarouselOptions(
                                        height: 30.h,
                                        autoPlay: true,
                                        enlargeCenterPage: true,
                                        viewportFraction: 1,
                                        autoPlayInterval:
                                            const Duration(seconds: 5))),
                                const Divider(
                                  thickness: 0.5,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(5.w, 5.h, 5.w, 5.h),
                                  child: Column(
                                    children: [
                                      ShowText(
                                        "App name:",
                                        recentWorkDetailsList[index].appName,
                                        isMobile: isMobile,
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      ShowText(
                                        "Type:",
                                        recentWorkDetailsList[index].type,
                                        isMobile: isMobile,
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      ShowText(
                                        "About:",
                                        recentWorkDetailsList[index].about,
                                        isMobile: isMobile,
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      ShowText(
                                        "Github:",
                                        recentWorkDetailsList[index].github,
                                        isMobile: isMobile,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        });
                  },
                  child: Text(
                    "Details >",
                    style: Constants().mobileNormalTextStyle,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}

class DesktopCarouselImagePart extends StatelessWidget {
  const DesktopCarouselImagePart({
    Key? key,
    required this.recentWork,
    required this.index,
    this.isMobile,
  }) : super(key: key);

  final RecentWorksModel recentWork;
  final int index;
  final isMobile;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          image: AssetImage(recentWork.image),
          height: 100.h,
          width: 20.w,
          fit: BoxFit.fill,
        ),
        SizedBox(
          width: 2.w,
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  recentWork.category,
                  style: Constants().normalTextStyle,
                ),
                Text(
                  recentWork.title,
                  style: Constants().normalTextStyle,
                ),
                TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          isScrollControlled: true,
                          constraints: BoxConstraints(
                              minHeight: 70.h,
                              maxHeight: 90.h,
                              minWidth: 100.w),
                          builder: (context) {
                            return SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CarouselSlider.builder(
                                      itemCount: recentWorkDetailsList[index]
                                          .imageAssets
                                          .length,
                                      itemBuilder: (context, ind, i) {
                                        return Row(
                                          children: [
                                            SizedBox(
                                              width: 50.w,
                                              child: Image.asset(
                                                recentWorkDetailsList[index]
                                                    .imageAssets[ind],
                                                height: 100.h,
                                                width: 100.w,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            const VerticalDivider(
                                              thickness: 0.5,
                                            ),
                                          ],
                                        );
                                      },
                                      options: CarouselOptions(
                                          height: 60.h,
                                          autoPlay: true,
                                          enlargeCenterPage: true,
                                          viewportFraction: 0.55,
                                          autoPlayInterval:
                                              const Duration(seconds: 5))),
                                  const Divider(
                                    thickness: 0.5,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(5.w, 5.h, 5.w, 5.h),
                                    child: Column(
                                      children: [
                                        ShowText(
                                          "App name:",
                                          recentWorkDetailsList[index].appName,
                                          isMobile: isMobile,
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        ShowText(
                                          "Type:",
                                          recentWorkDetailsList[index].type,
                                          isMobile: isMobile,
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        ShowText(
                                          "About:",
                                          recentWorkDetailsList[index].about,
                                          isMobile: isMobile,
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        ShowText(
                                          "Github:",
                                          recentWorkDetailsList[index].github,
                                          isMobile: isMobile,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          });
                    },
                    child: Text(
                      "Details >",
                      style: Constants().normalTextStyle,
                    )),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class ShowText extends StatelessWidget {
  const ShowText(this.firstText, this.secondText, {Key? key, this.isMobile})
      : super(key: key);
  final firstText;
  final secondText;
  final isMobile;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(firstText,
            style: GoogleFonts.lato(
                fontSize: isMobile ? 15.sp : 8.sp,
                fontStyle: FontStyle.italic)),
        SizedBox(
          width: 2.w,
        ),
        firstText == "Github:"
            ? Flexible(
                child: Link(
                    uri: Uri.parse(secondText),
                    target: LinkTarget.blank,
                    builder: (context, followLink) {
                      return GestureDetector(
                        onTap: followLink,
                        child: Text(
                          secondText,
                          style: GoogleFonts.lato(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                              fontSize: isMobile ? 10.sp : 5.sp),
                        ),
                      );
                    }),
              )
            : Flexible(
                child: Text(
                  secondText,
                  style: Constants().mobileNormalTextStyle,
                ),
              )
      ],
    );
  }
}
