import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const Islami());
}

class Islami extends StatelessWidget {
  const Islami({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Islami App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
