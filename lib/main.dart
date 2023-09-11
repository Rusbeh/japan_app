import 'package:app_1/models/cart_model.dart';
import 'package:app_1/pages/cart_page.dart';
import 'package:app_1/pages/eventpages/festival.dart';
import 'package:app_1/pages/intro_page.dart';
import 'package:app_1/pages/menu_page.dart';
import 'package:app_1/pages/eventpages/nudelsuppe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MyApp(),
    ),
  );
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
        '/cartpage': (context) => CartPage(),
        '/festivalpage': (context) => FestivalPage(),
        '/nudelsuppepage': (context) => NudelsuppePage(),
      },
    );
  }
}
