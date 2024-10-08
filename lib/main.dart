import 'package:flutter/material.dart';
import 'package:islami/utils/app_theme.dart';

import 'screens/content_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const Islami());
}

class Islami extends StatelessWidget {
  const Islami({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      title: 'Islami App',
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        ContentScreen.routeName: (context) => const ContentScreen(),
      },
    );
  }
}
