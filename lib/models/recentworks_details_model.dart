import 'package:flutter/material.dart';

class RecentWorkDetails {
  final List<String> imageAssets;
  final String appName;
  final String about;
  final String type;
  final String github;
  final String appStoreLink;

  RecentWorkDetails(
      {required this.imageAssets,
      required this.appName,
      required this.about,
      required this.github,
      required this.appStoreLink,
      required this.type});
}

List<RecentWorkDetails> recentWorkDetailsList = [
  RecentWorkDetails(
      imageAssets: [
        "assets/images/todoImage1.png",
        "assets/images/todoImage2.png",
        "assets/images/todoImage3.png",
        "assets/images/todoImage4.png",
        "assets/images/todoImage5.png",
        "assets/images/todoImage6.png",
        "assets/images/todoImage7.png"
      ],
      appName: "Todo",
      about:
          "A User friendly Todo Application with a simple to use UI. Simple task division based on urgency and ability to complete and move tasks into done tasks.",
      github: "https://github.com/sathya991/Todo",
      appStoreLink: "",
      type: "Android & IOS application"),
  RecentWorkDetails(
      imageAssets: [
        "assets/images/portfolioImage1.png",
        "assets/images/portfolioImage2.png",
        "assets/images/portfolioImage3.png"
      ],
      appName: "Portfolio Website",
      about:
          "A Portfolio website that showcases my arsenal of projects made with Flutter with its very own touch of styling.",
      github: "https://github.com/sathya991/portfolio_web/tree/master",
      appStoreLink: "",
      type: "Website using Flutter")
];
