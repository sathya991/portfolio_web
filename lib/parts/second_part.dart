import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/about_me.dart';
import 'package:portfolio/widgets/services_offered.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:sizer/sizer.dart';

class SecondPart extends StatelessWidget {
  const SecondPart(
      {Key? key, required this.itemScrollController, this.isMobile})
      : super(key: key);
  final ItemScrollController itemScrollController;
  final isMobile;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      height: 100.h,
      width: 100.w,
      child: Padding(
        padding: Constants().constPaddingSize,
        child: Column(
          children: [
            AboutMeWidget(
              isMobile: isMobile,
            ),
            ServicesWidget(
              itemScrollController: itemScrollController,
              isMobile: isMobile,
            )
          ],
        ),
      ),
    );
  }
}
