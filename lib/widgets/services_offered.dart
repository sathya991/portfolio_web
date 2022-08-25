import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/service_model.dart';
import 'package:portfolio/widgets/service_image.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/link.dart';

class ServicesWidget extends StatefulWidget {
  const ServicesWidget(
      {Key? key, required this.itemScrollController, this.isMobile})
      : super(key: key);
  final ItemScrollController itemScrollController;
  final isMobile;
  @override
  State<ServicesWidget> createState() => _ServicesWidgetState();
}

class _ServicesWidgetState extends State<ServicesWidget> {
  List<Widget> servicesList = [];
  @override
  void initState() {
    // TODO: implement initState
    widget.isMobile ? addMobileServices() : addServices();
    super.initState();
  }

  addServices() {
    for (int i = 0; i < services.length; i++) {
      servicesList.add(ServiceImage(
        color: services[i].color,
        imageAsset: services[i].image,
        text: services[i].title,
      ));
      servicesList.add(SizedBox(
        width: 10.w,
      ));
    }
  }

  addMobileServices() {
    for (int i = 0; i < services.length; i++) {
      servicesList.add(ServiceImageMobile(
        color: services[i].color,
        imageAsset: services[i].image,
        text: services[i].title,
      ));
      servicesList.add(SizedBox(
        height: 1.h,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "My Skills",
            style: widget.isMobile
                ? Constants().mobileHeadingTextStyle
                : Constants().headingTextStyle,
          ),
          SizedBox(
            height: 2.h,
          ),
          widget.isMobile
              ? Column(
                  children: servicesList,
                )
              : Row(children: servicesList),
          SizedBox(
            height: 6.h,
          ),
        ]),
        Column(
          children: [
            Text(
              "In need of these skills?",
              style: widget.isMobile
                  ? Constants().mobileHeadingTextStyle
                  : Constants().headingTextStyle,
            ),
            SizedBox(
              height: 2.h,
            ),
            widget.isMobile
                ? Column(
                    children: [
                      ImageButton(
                        widget: widget,
                        onClick: () => widget.itemScrollController.scrollTo(
                            index: 3,
                            duration: const Duration(milliseconds: 300)),
                        imageAsset: 'assets/images/handshake.png',
                        text: "Hire me",
                        isMobile: widget.isMobile,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(
                              "https://drive.google.com/uc?export=download&id=1-NAhtkl2bzk1JG1xoKFUmrlIbm4XzRq_"),
                          builder: (context, followLink) {
                            return ImageButton(
                              widget: widget,
                              onClick: followLink,
                              imageAsset: 'assets/images/cloud.png',
                              text: "Download CV",
                              isMobile: widget.isMobile,
                            );
                          }),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageButton(
                        widget: widget,
                        onClick: () => widget.itemScrollController.scrollTo(
                            index: 3,
                            duration: const Duration(milliseconds: 300)),
                        imageAsset: 'assets/images/handshake.png',
                        text: "Hire me",
                        isMobile: widget.isMobile,
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(
                              "https://drive.google.com/uc?export=download&id=1-NAhtkl2bzk1JG1xoKFUmrlIbm4XzRq_"),
                          builder: (context, followLink) {
                            return ImageButton(
                              widget: widget,
                              onClick: followLink,
                              imageAsset: 'assets/images/cloud.png',
                              text: "Download CV",
                              isMobile: widget.isMobile,
                            );
                          }),
                    ],
                  ),
          ],
        )
      ],
    );
  }
}

class ImageButton extends StatelessWidget {
  const ImageButton({
    Key? key,
    required this.widget,
    this.imageAsset,
    this.text,
    this.onClick,
    this.isMobile,
  }) : super(key: key);
  final imageAsset;
  final text;
  final onClick;
  final isMobile;

  final ServicesWidget widget;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onClick();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isMobile
              ? Image.asset(
                  imageAsset,
                  height: 8.h,
                  width: 8.w,
                )
              : Image.asset(
                  imageAsset,
                  height: 5.h,
                  width: 5.w,
                ),
          Text(
            text,
            style: GoogleFonts.lato(
                fontSize: isMobile ? 12.sp : 5.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
      style: ElevatedButton.styleFrom(
          primary: const Color.fromRGBO(233, 240, 248, 1),
          minimumSize: isMobile ? Size(40.w, 4.h) : Size(15.w, 5.h),
          maximumSize: isMobile ? Size(45.w, 4.h) : Size(20.w, 5.h),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
    );
  }
}
