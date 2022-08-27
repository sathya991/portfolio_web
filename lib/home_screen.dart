import 'package:flutter/material.dart';
import 'package:portfolio/parts/contact_part.dart';
import 'package:portfolio/parts/intro_part.dart';
import 'package:portfolio/parts/my_works_part.dart';
import 'package:portfolio/parts/second_part.dart';
import 'package:portfolio/responsive/desktop_layout.dart';
import 'package:portfolio/responsive/mobile_layout.dart';
import 'package:portfolio/responsive/responsive_layout.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
          mobileBody: MobileLayout(), desktopBody: DesktopLayout()),
    );
  }
}
