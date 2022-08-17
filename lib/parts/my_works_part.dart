import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyWorksPart extends StatelessWidget {
  const MyWorksPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'images/myWorksBG.jpg',
              ),
              fit: BoxFit.fill)),
      child: Column(
        children: [
          Column(
            children: const [
              Text("My works"),
              Text("My aresenal of works to show off")
            ],
          ),
        ],
      ),
    );
  }
}
