import 'package:flutter/material.dart';
import 'package:islami/utils/app_images.dart';

import '../widgets/custom_card_for_islami_content.dart';
// import 'package:flutter/services.dart';

class ContentScreen extends StatelessWidget {
  static const String routeName = 'copntentScreen';
  const ContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(AppImages.background)),
      ),
      child: Scaffold(
        appBar: AppBar(title: const Text('Islami')),
        body: CustomCardForIslamiContent(
          height: height,
          width: width,
          soraName: '',
          soraContent: '',
        ),
      ),
    );
  }

  void readContent() async {
    // String file = await rootBundle
    //       .loadString('assets/files/quran/${argument.fileName}');
  }
}
