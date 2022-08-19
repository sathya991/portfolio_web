import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/recentworks_model.dart';
import 'package:portfolio/widgets/myWorksCard.dart';

class MyCarouselView extends StatelessWidget {
  const MyCarouselView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: recentWorks.length,
        itemBuilder: (context, index, i) {
          return MyWorksCard(
            recentWork: recentWorks[index],
            index: index,
          );
        },
        options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            autoPlayInterval: const Duration(seconds: 5)));
  }
}
