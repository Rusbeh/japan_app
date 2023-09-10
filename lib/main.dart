import 'package:app_1/pages/festival.dart';
import 'package:app_1/pages/intro_page.dart';
import 'package:app_1/pages/menu_page.dart';
import 'package:app_1/pages/nudelsuppe.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Japan Reise App',
      home: const IntroPage(),
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/menupage': (context) => const MenuPage(),
        '/festivalpage': (context) => const FestivalPage(),
        '/nudelsuppepage': (context) => const NudelsuppePage(),
      },
    );
  }
}
