import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  const ResponsiveButton({
    super.key,
    this.width = 120,
    this.isResponsive = false,
  });
  final bool isResponsive;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive == true ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment:
              isResponsive == true
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.center,
          children: [
            isResponsive == true
                ? Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: AppText(text: "Book Trip Now", color: Colors.white),
                )
                : Container(),
            Image.asset("assets/images/button-one.png"),
          ],
        ),
      ),
    );
  }
}
