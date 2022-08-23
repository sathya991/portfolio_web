import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/blurred_text_widget.dart';
import 'package:portfolio/widgets/navbar.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:sizer/sizer.dart';

class IntroPart extends StatefulWidget {
  const IntroPart(
      {Key? key,
      required this.itemScrollController,
      this.isMobile,
      required this.scaffoldKey})
      : super(key: key);
  final ItemScrollController itemScrollController;
  final isMobile;
  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  State<IntroPart> createState() => _IntroPartState();
}

class _IntroPartState extends State<IntroPart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/background.jpg'))),
      child: Stack(
        children: [
          const BlurredTextWidget(),
          widget.isMobile
              ? Positioned(
                  child: IconButton(
                    color: Colors.white,
                    icon: const Icon(Icons.menu_rounded),
                    onPressed: () =>
                        widget.scaffoldKey.currentState?.openDrawer(),
                  ),
                  top: 2.h,
                  left: 2.w,
                )
              : Positioned(
                  child: NavBar(
                    itemScrollController: widget.itemScrollController,
                  ),
                  right: 2.w,
                  top: 2.h,
                )
        ],
      ),
    );
  }
}
