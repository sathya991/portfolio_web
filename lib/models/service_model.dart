import 'package:flutter/material.dart';

class ServiceModel {
  final int id;
  final String title, image;
  final Color color;
  ServiceModel({
    required this.id,
    required this.title,
    required this.image,
    required this.color,
  });
}

List<ServiceModel> services = [
  ServiceModel(
      id: 1,
      title: "Android Developement using Flutter",
      image: "images/android.png",
      color: const Color.fromRGBO(72, 232, 109, 1)),
  ServiceModel(
      id: 2,
      title: "IOS Developement using Flutter",
      image: "images/ios.jpeg",
      color: const Color.fromRGBO(208, 245, 244, 1)),
  ServiceModel(
      id: 1,
      title: "Web Developement using Flutter",
      image: "images/web.png",
      color: const Color.fromARGB(255, 90, 178, 249)),
];
