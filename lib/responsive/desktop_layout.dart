import 'package:flutter/material.dart';
import 'package:portfolio/parts/contact_part.dart';
import 'package:portfolio/parts/intro_part.dart';
import 'package:portfolio/parts/my_works_part.dart';
import 'package:portfolio/parts/second_part.dart';
import 'package:portfolio/responsive/common_layout.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      isMobile: false,
    );
  }
}
