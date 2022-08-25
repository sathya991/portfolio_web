import 'package:flutter/material.dart';

class ContactMeModel {
  final String text;
  final String imageAsset;
  final Color color;
  final String link;

  ContactMeModel(
      {required this.text,
      required this.imageAsset,
      required this.color,
      required this.link});
}

List<ContactMeModel> contactWays = [
  ContactMeModel(
      link: "https://www.linkedin.com/in/satya-srivatsav-gadiyaram-120889148",
      color: const Color.fromARGB(255, 77, 148, 242),
      imageAsset: 'assets/images/linkLogo.png',
      text: "Linkedin"),
  ContactMeModel(
      text: "Whatsapp",
      imageAsset: 'assets/images/whatsapp.png',
      color: const Color.fromRGBO(115, 201, 107, 1),
      link:
          "https://api.whatsapp.com/send/?phone=+919014120850&text=Hello Sathya"),
  ContactMeModel(
      text: "Twitter",
      imageAsset: 'assets/images/twitter.png',
      color: const Color.fromRGBO(74, 153, 233, 1),
      link: "https://twitter.com/Sathya9911"),
  ContactMeModel(
      text: "Instagram",
      imageAsset: 'assets/images/instagram.png',
      color: const Color.fromRGBO(188, 39, 93, 1),
      link: "https://www.instagram.com/gojo_sensei_991/?hl=en"),
  ContactMeModel(
      text: "Gmail",
      imageAsset: 'assets/images/gmail.png',
      color: const Color.fromRGBO(224, 30, 31, 1),
      link: "https://www.instagram.com/gojo_sensei_991/?hl=en"),
  ContactMeModel(
      text: "Github",
      imageAsset: 'assets/images/github.png',
      color: const Color.fromRGBO(23, 27, 33, 1),
      link: "https://github.com/sathya991"),
];
