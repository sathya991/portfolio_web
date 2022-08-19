import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/recentworks_model.dart';
import 'package:sizer/sizer.dart';

class MyWorksCard extends StatelessWidget {
  const MyWorksCard({Key? key, required this.recentWork, required this.index})
      : super(key: key);
  final RecentWorksModel recentWork;
  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      width: 80.w,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.white.withOpacity(0.6),
        elevation: 1,
        child: Row(
          children: [
            Image(
              image: AssetImage(recentWork.image),
              height: 100.h,
              width: 20.w,
              fit: BoxFit.fitHeight,
            ),
            SizedBox(
              width: 2.w,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      recentWork.category,
                      style: Constants().normalTextStyle,
                    ),
                    Text(
                      recentWork.title,
                      style: Constants().normalTextStyle,
                    ),
                    TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              isScrollControlled: true,
                              constraints: BoxConstraints(
                                  minHeight: 70.h,
                                  maxHeight: 90.h,
                                  minWidth: 100.w),
                              builder: (context) {
                                return ListView.builder(
                                    itemCount: 200,
                                    itemBuilder: (context, index) {
                                      return Text("Hello");
                                    });
                              });
                        },
                        child: Text(
                          "Details >",
                          style: Constants().normalTextStyle,
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
