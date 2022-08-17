import 'package:flutter/material.dart';
import 'package:portfolio/widgets/about_me.dart';
import 'package:portfolio/widgets/services_offered.dart';
import 'package:sizer/sizer.dart';

class SecondPart extends StatelessWidget {
  const SecondPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      height: 100.h,
      width: 100.w,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10.w, 5.h, 10.w, 0),
        child: Column(
          children: [AboutMeWidget(), ServicesWidget()],
        ),
      ),
    );
  }
}
