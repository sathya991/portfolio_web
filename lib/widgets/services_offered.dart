import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/service_model.dart';
import 'package:portfolio/widgets/service_image.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/link.dart';

class ServicesWidget extends StatefulWidget {
  const ServicesWidget({Key? key, required this.itemScrollController})
      : super(key: key);
  final ItemScrollController itemScrollController;
  @override
  State<ServicesWidget> createState() => _ServicesWidgetState();
}

class _ServicesWidgetState extends State<ServicesWidget> {
  List<Widget> servicesList = [];
  @override
  void initState() {
    // TODO: implement initState
    addServices();
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "My Skills",
            style: Constants().headingTextStyle,
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(children: servicesList),
          SizedBox(
            height: 6.h,
          ),
        ]),
        Column(
          children: [
            Text(
              "In need of these skills?",
              style: Constants().headingTextStyle,
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageButton(
                  widget: widget,
                  onClick: () => widget.itemScrollController.scrollTo(
                      index: 3, duration: const Duration(milliseconds: 300)),
                  imageAsset: 'images/handshake.png',
                  text: "Hire me",
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
                        imageAsset: 'images/cloud.png',
                        text: "Download CV",
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
  }) : super(key: key);
  final imageAsset;
  final text;
  final onClick;

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
          Image.asset(
            imageAsset,
            height: 5.h,
            width: 5.w,
          ),
          Text(
            text,
            style: GoogleFonts.lato(
                fontSize: 5.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
      style: ElevatedButton.styleFrom(
          primary: const Color.fromRGBO(233, 240, 248, 1),
          minimumSize: Size(15.w, 5.h),
          maximumSize: Size(20.w, 5.h),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
    );
  }
}
