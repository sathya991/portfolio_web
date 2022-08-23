import 'package:flutter/material.dart';
import 'package:portfolio/parts/contact_part.dart';
import 'package:portfolio/parts/intro_part.dart';
import 'package:portfolio/parts/my_works_part.dart';
import 'package:portfolio/parts/second_part.dart';
import 'package:portfolio/widgets/drawer.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class CommonLayout extends StatelessWidget {
  const CommonLayout({Key? key, this.isMobile}) : super(key: key);
  final isMobile;

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    final itemScrollController = ItemScrollController();
    List allWidgets = [
      IntroPart(
        itemScrollController: itemScrollController,
        isMobile: isMobile,
        scaffoldKey: scaffoldKey,
      ),
      SecondPart(
        itemScrollController: itemScrollController,
        isMobile: isMobile,
      ),
      MyWorksPart(
        isMobile: isMobile,
      ),
      ContactPart(
        isMobile: isMobile,
      ),
    ];
    return Scaffold(
      drawer: isMobile
          ? DrawerWidget(
              itemScrollController: itemScrollController,
            )
          : null,
      key: scaffoldKey,
      body: ScrollablePositionedList.builder(
          itemScrollController: itemScrollController,
          itemCount: 4,
          itemBuilder: (context, index) {
            return allWidgets[index];
          }),
    );
  }
}
