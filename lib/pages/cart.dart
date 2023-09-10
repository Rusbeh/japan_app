import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  final int quantity;

  NewPage({required this.quantity});

  void goBackToPreviousScreen(BuildContext context) {
    Navigator.pop(context, quantity);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Neue Seite"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gespeicherte Menge: $quantity",
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () => goBackToPreviousScreen(context),
              child: Text("Zurück zur FestivalPage"),
            ),
          ],
        ),
      ),
    );
  }
}
