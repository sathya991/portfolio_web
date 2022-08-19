import 'package:flutter/material.dart';
import 'package:portfolio/home_screen.dart';
import 'package:portfolio/parts/second_part.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Portfolio',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Container(
            constraints: BoxConstraints(maxHeight: 1000, maxWidth: 1000),
            child: const HomeScreen()),
      );
    });
  }
}
