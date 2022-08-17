import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:sizer/sizer.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var isHover1 = false;
  var isHover2 = false;
  var isHover3 = false;
  var isHover4 = false;
  var isHover5 = false;

  void onEntered(bool isHovered) {
    setState(() {
      isHover1 = isHovered;
    });
  }

  void onEntered1(bool isHovered) {
    setState(() {
      isHover2 = isHovered;
    });
  }

  void onEntered2(bool isHovered) {
    setState(() {
      isHover3 = isHovered;
    });
  }

  void onEntered3(bool isHovered) {
    setState(() {
      isHover4 = isHovered;
    });
  }

  void onEntered4(bool isHovered) {
    setState(() {
      isHover5 = isHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.white.withOpacity(0.1),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              // Navigator.of(context).pushNamed();
            },
            child: MouseRegion(
              onEnter: (event) => onEntered(true),
              onExit: (event) => onEntered(false),
              child: Text(
                "About Me",
                style: isHover1
                    ? Constants().hoverTextStyle()
                    : Constants().navBarTextStyle(),
              ),
            ),
          ),
          SizedBox(
            width: 2.w,
          ),
          GestureDetector(
            onTap: () {},
            child: MouseRegion(
              onEnter: (event) => onEntered1(true),
              onExit: (event) => onEntered1(false),
              child: Text(
                "Services",
                style: isHover2
                    ? Constants().hoverTextStyle()
                    : Constants().navBarTextStyle(),
              ),
            ),
          ),
          SizedBox(
            width: 2.w,
          ),
          GestureDetector(
            onTap: () {},
            child: MouseRegion(
              onEnter: (event) => onEntered2(true),
              onExit: (event) => onEntered2(false),
              child: Text(
                "My Works",
                style: isHover3
                    ? Constants().hoverTextStyle()
                    : Constants().navBarTextStyle(),
              ),
            ),
          ),
          SizedBox(
            width: 2.w,
          ),
          GestureDetector(
            onTap: () {},
            child: MouseRegion(
              onEnter: (event) => onEntered3(true),
              onExit: (event) => onEntered3(false),
              child: Text(
                "Feedback",
                style: isHover4
                    ? Constants().hoverTextStyle()
                    : Constants().navBarTextStyle(),
              ),
            ),
          ),
          SizedBox(
            width: 2.w,
          ),
          GestureDetector(
            onTap: () {},
            child: MouseRegion(
              onEnter: (event) => onEntered4(true),
              onExit: (event) => onEntered4(false),
              child: Text(
                "Contact",
                style: isHover5
                    ? Constants().hoverTextStyle()
                    : Constants().navBarTextStyle(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
