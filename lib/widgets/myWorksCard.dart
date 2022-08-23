import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/recentworks_details_model.dart';
import 'package:portfolio/models/recentworks_model.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/link.dart';

class MyWorksCard extends StatelessWidget {
  const MyWorksCard({Key? key, required this.recentWork, required this.index})
      : super(key: key);
  final RecentWorksModel recentWork;
  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      width: 80.w,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.white.withOpacity(0.6),
        elevation: 1,
        child: Row(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CarouselSlider.builder(
                                          itemCount:
                                              recentWorkDetailsList[index]
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
                                        padding: EdgeInsets.fromLTRB(
                                            5.w, 5.h, 5.w, 5.h),
                                        child: Column(
                                          children: [
                                            ShowText(
                                                "App name:",
                                                recentWorkDetailsList[index]
                                                    .appName),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            ShowText(
                                                "Type:",
                                                recentWorkDetailsList[index]
                                                    .type),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            ShowText(
                                                "About:",
                                                recentWorkDetailsList[index]
                                                    .about),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            ShowText(
                                                "Github:",
                                                recentWorkDetailsList[index]
                                                    .github),
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
        ),
      ),
    );
  }
}

class ShowText extends StatelessWidget {
  const ShowText(this.firstText, this.secondText, {Key? key}) : super(key: key);
  final firstText;
  final secondText;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(firstText,
            style:
                GoogleFonts.lato(fontSize: 8.sp, fontStyle: FontStyle.italic)),
        SizedBox(
          width: 2.w,
        ),
        firstText == "Github:"
            ? Link(
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
                          fontSize: 5.sp),
                    ),
                  );
                })
            : Flexible(
                child: Text(
                  secondText,
                  style: Constants().normalTextStyle,
                ),
              )
      ],
    );
  }
}
