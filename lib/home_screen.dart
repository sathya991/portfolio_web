import 'package:flutter/material.dart';
import 'package:portfolio/parts/intro_part.dart';
import 'package:portfolio/parts/my_works_part.dart';
import 'package:portfolio/parts/second_part.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final itemScrollController = ItemScrollController();
  @override
  Widget build(BuildContext context) {
    List allWidgets = [
      IntroPart(
        itemScrollController: itemScrollController,
      ),
      const SecondPart(),
      const MyWorksPart(),
    ];
    return Scaffold(
      body: ScrollablePositionedList.builder(
          itemScrollController: itemScrollController,
          itemCount: 3,
          itemBuilder: (context, index) {
            return allWidgets[index];
          }),
    );
  }
}
