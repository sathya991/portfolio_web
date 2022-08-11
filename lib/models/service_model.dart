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

  List<ServiceModel> services = [
    ServiceModel(
        id: 1,
        title: "Android Developement using Flutter",
        image: "",
        color: Colors.green),
    ServiceModel(
        id: 2,
        title: "IOS Developement using Flutter",
        image: "",
        color: Colors.white),
    ServiceModel(
        id: 1,
        title: "Web Developement using Flutter",
        image: "",
        color: Colors.blue),
  ];
}
