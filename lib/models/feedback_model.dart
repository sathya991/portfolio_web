import 'package:flutter/material.dart';

class FeedbackModel {
  final String name, review, userPic;
  final int id;
  final Color color;
  FeedbackModel(
      {required this.name,
      required this.review,
      required this.userPic,
      required this.id,
      required this.color});
}
