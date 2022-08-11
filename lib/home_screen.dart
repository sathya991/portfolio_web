import 'package:flutter/material.dart';
import 'package:portfolio/parts/intro_part.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: const [IntroPart()],
      )),
    );
  }
}
