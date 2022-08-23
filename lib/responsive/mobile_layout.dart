import 'package:flutter/material.dart';
import 'package:portfolio/responsive/common_layout.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CommonLayout(
      isMobile: true,
    );
  }
}
