import 'package:flutter/material.dart';
import 'package:islami/utils/app_colors.dart';

class CustomCardForIslamiContent extends StatelessWidget {
  final double height;
  final double width;
  final String soraName;
  final String soraContent;

  const CustomCardForIslamiContent({
    super.key,
    required this.height,
    required this.width,
    required this.soraName,
    required this.soraContent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.7,
      width: width * 0.8,
      margin: EdgeInsets.symmetric(
        horizontal: width * 0.1,
        vertical: height * 0.05,
      ),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white.withOpacity(0.7),
            Colors.white,
          ],
        ),
      ),
      child: Column(
        children: [
          Text(
            soraName,
            style: const TextStyle(
              fontSize: 24,
              color: AppColors.accentColor,
            ),
          ),
          const Divider(color: AppColors.primaryColor),
          SingleChildScrollView(
            child: Text(
              soraContent,
              style: const TextStyle(
                fontSize: 24,
                color: AppColors.accentColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
