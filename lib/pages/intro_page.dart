import 'package:app_1/components/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 177, 210),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "JAPAN JOURNEY",
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 38, color: Colors.white),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Image.asset(
                "lib/images/japan6.png",
                height: 380,
              ),
            ),
            SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Erleben Sie Japan!",
                    style: GoogleFonts.dmSerifDisplay(
                        fontSize: 40, color: Colors.white),
                  ),
                  Image.asset(
                    "lib/images/japanflag.png",
                    height: 30,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "日本を楽しんでください",
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Entdecke das Land der aufgehenden Sonne und tauche ein in eine Welt voller Tradition, Kultur und atemberaubender Natur.",
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 15, color: Colors.white),
              ),
            ),
            SizedBox(height: 40),
            MyButton(text: "Reise starten!")
          ],
        ),
      ),
    );
  }
}
