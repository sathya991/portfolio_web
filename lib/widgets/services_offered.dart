import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/service_model.dart';
import 'package:portfolio/widgets/service_image.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:sizer/sizer.dart';

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
            ElevatedButton(
              onPressed: () {
                widget.itemScrollController.scrollTo(
                    index: 3, duration: const Duration(milliseconds: 300));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/handshake.png',
                    height: 5.h,
                    width: 5.w,
                  ),
                  Text(
                    "Hire me",
                    style: GoogleFonts.lato(
                        fontSize: 5.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(233, 240, 248, 1),
                  fixedSize: Size(15.w, 5.h),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
            ),
          ],
        )
      ],
    );
  }
}
