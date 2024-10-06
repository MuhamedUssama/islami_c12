import 'package:flutter/material.dart';
import 'package:islami/utils/app_images.dart';

import '../models/content_screen_model.dart';
import '../utils/app_colors.dart';
import 'package:flutter/services.dart';

class ContentScreen extends StatefulWidget {
  static const String routeName = 'copntentScreen';

  const ContentScreen({super.key});

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  late ContentScreenModel arguments;
  String fileContent = '';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    arguments =
        ModalRoute.of(context)?.settings.arguments as ContentScreenModel;

    if (fileContent.isEmpty) {
      readContent();
    }

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.background),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: const Text('Islami')),
        body: Container(
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
                arguments.title,
                style: const TextStyle(
                  fontSize: 24,
                  color: AppColors.accentColor,
                ),
              ),
              const Divider(color: AppColors.primaryColor),
              Expanded(
                child: SingleChildScrollView(
                  child: fileContent.isEmpty
                      ? const CircularProgressIndicator(
                          color: AppColors.primaryColor,
                        )
                      : Text(
                          fileContent,
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 24,
                            color: AppColors.accentColor,
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void readContent() async {
    String file =
        await rootBundle.loadString('assets/files/quran/${arguments.fileName}');
    fileContent = file;

    setState(() {});
  }
}
