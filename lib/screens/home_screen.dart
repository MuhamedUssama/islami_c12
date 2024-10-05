import 'package:flutter/material.dart';
import 'package:islami/screens/tabs/hadeth_tab.dart';
import 'package:islami/screens/tabs/quran_tab.dart';
import 'package:islami/screens/tabs/radio_tab.dart';
import 'package:islami/screens/tabs/sebha_tab.dart';
import 'package:islami/screens/tabs/settings_tab.dart';
import 'package:islami/utils/app_colors.dart';

import '../utils/app_images.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'homeScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.background),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: const Text('Islami')),
        body: tabs[_currentIndex],
        bottomNavigationBar: customBottomNavigationBar(),
      ),
    );
  }

  Widget customBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      selectedItemColor: AppColors.accentColor,
      onTap: (value) {
        setState(() {
          _currentIndex = value;
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage(AppImages.quranIcon)),
          label: 'Quran',
          backgroundColor: AppColors.primaryColor,
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage(AppImages.hadethIcon)),
          label: 'Hadeth',
          backgroundColor: AppColors.primaryColor,
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage(AppImages.sebhaIcon)),
          label: 'Sebha',
          backgroundColor: AppColors.primaryColor,
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage(AppImages.radioIcon)),
          label: 'Radio',
          backgroundColor: AppColors.primaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_rounded),
          label: "Settings",
          backgroundColor: AppColors.primaryColor,
        ),
      ],
    );
  }
}
