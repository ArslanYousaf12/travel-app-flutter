// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:travel_app/widgets/app_text.dart';

class AppButton extends StatelessWidget {
  AppButton({
    Key? key,
    this.icon,
    this.text = "Hi",
    this.isIcon = false,
    required this.color,
    required this.backgroundColor,
    required this.size,
    required this.borderColor,
  }) : super(key: key);
  final Color color;
  final Color backgroundColor;
  final double size;
  final Color borderColor;
  String? text;
  IconData? icon;
  bool? isIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
        border: Border.all(color: borderColor, width: 1.0),
      ),
      child:
          isIcon == false
              ? Center(child: AppText(text: text!, color: color))
              : Center(child: Icon(icon, color: color)),
    );
  }
}
