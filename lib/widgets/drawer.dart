import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:sizer/sizer.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key, required this.itemScrollController})
      : super(key: key);
  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 2.h,
          ),
          ListTextWidget(
              text: "About me",
              function: () {
                itemScrollController
                    .scrollTo(
                        index: 1, duration: const Duration(milliseconds: 300))
                    .then((value) {
                  Navigator.of(context).pop();
                });
              }),
          Divider(
            thickness: 0.2.h,
          ),
          ListTextWidget(
              text: "Services",
              function: () {
                itemScrollController
                    .scrollTo(
                        index: 1, duration: const Duration(milliseconds: 300))
                    .then((value) {
                  Navigator.of(context).pop();
                });
              }),
          Divider(
            thickness: 0.2.h,
          ),
          ListTextWidget(
              text: "My Works",
              function: () {
                itemScrollController
                    .scrollTo(
                        index: 2, duration: const Duration(milliseconds: 300))
                    .then((value) {
                  Navigator.of(context).pop();
                });
              }),
          Divider(
            thickness: 0.2.h,
          ),
          ListTextWidget(
              text: "Contact me",
              function: () {
                itemScrollController
                    .scrollTo(
                        index: 3, duration: const Duration(milliseconds: 300))
                    .then((value) {
                  Navigator.of(context).pop();
                });
              }),
          Divider(
            thickness: 0.2.h,
          ),
        ],
      ),
    );
  }
}

class ListTextWidget extends StatelessWidget {
  const ListTextWidget({
    Key? key,
    this.text,
    this.function,
  }) : super(key: key);
  final text;
  final function;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: ListTile(
        trailing: const Icon(Icons.arrow_right_sharp),
        title: Text(
          text,
          style: Constants().mobileNormalTextStyle,
        ),
      ),
    );
  }
}
