import 'package:flutter/material.dart';

class HomeCardModel {
  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;

  final IconData icon;
  final Color iconColor;

  final String title;

  const HomeCardModel({
    Key? key,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.color4,
    required this.icon,
    required this.iconColor,
    required this.title,
  });
}