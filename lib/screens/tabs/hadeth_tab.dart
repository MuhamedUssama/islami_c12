import 'package:flutter/material.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:islami/utils/app_images.dart';

import '../../widgets/custom_quran_text_widget.dart';

class HadethTab extends StatelessWidget {
  const HadethTab({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(AppImages.hadeathScreenLogo),
        SizedBox(height: height * 0.01),
        const Divider(
          color: AppColors.primaryColor,
          thickness: 3,
        ),
        CustomQuranTextWidget(
          text: "Ahadeath",
          fontSize: 22,
          width: width,
          fontWeight: FontWeight.bold,
          padding: 4,
        ),
        const Divider(
          color: AppColors.primaryColor,
          thickness: 3,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () {},
              child: CustomQuranTextWidget(
                text: 'الحديث رقم ${index + 1}',
                fontSize: 22,
                fontWeight: FontWeight.w400,
                padding: 4,
                width: width,
              ),
            ),
            itemCount: 50,
          ),
        ),
      ],
    );
  }
}
