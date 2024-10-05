import 'package:flutter/material.dart';

import 'utils/app_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.background),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Islami',
          ),
        ),
      ),
    );
  }
}
