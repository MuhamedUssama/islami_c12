import 'package:flutter/material.dart';
import 'package:islami/screens/content_screen.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:islami/utils/app_constants.dart';
import 'package:islami/utils/app_images.dart';

import '../../models/content_screen_model.dart';
import '../../widgets/custom_quran_text_widget.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(AppImages.quranScreenLogo),
        SizedBox(height: height * 0.01),
        const SizedBox(
          height: 3,
          child: Divider(
            color: AppColors.primaryColor,
            thickness: 3,
          ),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomQuranTextWidget(
                text: "Ayat Number",
                fontSize: 22,
                width: width,
                fontWeight: FontWeight.bold,
                padding: 8,
              ),
              const VerticalDivider(
                color: AppColors.primaryColor,
                thickness: 3,
              ),
              CustomQuranTextWidget(
                text: "Sora Name",
                fontSize: 22,
                width: width,
                fontWeight: FontWeight.bold,
                padding: 8,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 3,
          child: Divider(
            color: AppColors.primaryColor,
            thickness: 3,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          ContentScreen.routeName,
                          arguments: ContentScreenModel(
                            title: AppConstants.soraNames[index],
                            fileName: "${index + 1}.txt",
                            isQuran: true,
                          ),
                        );
                      },
                      child: CustomQuranTextWidget(
                        text: AppConstants.soraAyatCount[index],
                        fontSize: 22,
                        width: width,
                        fontWeight: FontWeight.w400,
                        padding: 8,
                      ),
                    ),
                    const VerticalDivider(
                      color: AppColors.primaryColor,
                      thickness: 3,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          ContentScreen.routeName,
                          arguments: ContentScreenModel(
                            title: AppConstants.soraNames[index],
                            fileName: "${index + 1}.txt",
                            isQuran: true,
                          ),
                        );
                      },
                      child: CustomQuranTextWidget(
                        text: AppConstants.soraNames[index],
                        fontSize: 22,
                        width: width,
                        fontWeight: FontWeight.w400,
                        padding: 8,
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: AppConstants.soraAyatCount.length,
          ),
        ),
      ],
    );
  }
}
