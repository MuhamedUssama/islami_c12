import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomQuranTextWidget extends StatelessWidget {
  final double width;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  const CustomQuranTextWidget({
    super.key,
    required this.width,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 0.4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: fontSize,
            color: AppColors.accentColor,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
