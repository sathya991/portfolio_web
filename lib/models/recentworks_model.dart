import 'package:flutter/material.dart';

class RecentWorksModel {
  final String image, category, title;
  final int id;
  RecentWorksModel(
      {required this.id,
      required this.image,
      required this.category,
      required this.title});
}

List<RecentWorksModel> recentWorks = [
  RecentWorksModel(
      id: 1,
      image: "images/1024.png",
      category: "Android & IOS Application",
      title: "Todo"),
  RecentWorksModel(
      id: 3,
      image: "images/porfolio.png",
      category: "Web Application",
      title: "Portfolio Website")
];
